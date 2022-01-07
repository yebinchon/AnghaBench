
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int packet_trace; } ;
struct Masscan {TYPE_4__* nic; int is_offline; scalar_t__ bpf_filter; TYPE_3__ nmap; int is_sendq; int is_pfring; } ;
typedef int ifname2 ;
struct TYPE_5__ {unsigned int first; unsigned int last; int range; } ;
struct TYPE_6__ {TYPE_1__ ip; } ;
struct TYPE_8__ {char* ifname; char* my_mac; scalar_t__ my_mac_count; char* router_mac; unsigned int router_ip; int adapter; int vlan_id; int is_vlan; TYPE_2__ src; } ;


 int LOG (int,char*,...) ;
 int arp_resolve_sync (int ,unsigned int,unsigned char*,unsigned int,unsigned char*) ;
 int fprintf (int ,char*,...) ;
 scalar_t__ memcmp (unsigned char*,char*,int) ;
 int memcpy (unsigned char*,char*,int) ;
 unsigned int rawsock_get_adapter_ip (char*) ;
 int rawsock_get_adapter_mac (char*,unsigned char*) ;
 int rawsock_get_default_gateway (char*,unsigned int*) ;
 int rawsock_get_default_interface (char*,int) ;
 int rawsock_ignore_transmits (int ,unsigned char*,char*) ;
 int rawsock_init_adapter (char*,int ,int ,int ,int ,void*,int ,int ) ;
 int stderr ;

int
masscan_initialize_adapter(
    struct Masscan *masscan,
    unsigned index,
    unsigned char *adapter_mac,
    unsigned char *router_mac
    )
{
    char *ifname;
    char ifname2[256];
    unsigned adapter_ip = 0;

    if (masscan == ((void*)0))
        return -1;

    LOG(1, "if: initializing adapter interface\n");
    if (masscan->nic[index].ifname[0])
        ifname = masscan->nic[index].ifname;
    else {

        int err;
        ifname2[0] = '\0';
        err = rawsock_get_default_interface(ifname2, sizeof(ifname2));
        if (err || ifname2[0] == '\0') {
            fprintf(stderr, "FAIL: could not determine default interface\n");
            fprintf(stderr, "FAIL:... try \"--interface ethX\"\n");
            return -1;
        }
        ifname = ifname2;
    }
    LOG(2, "if: interface=%s\n", ifname);
    adapter_ip = masscan->nic[index].src.ip.first;
    if (adapter_ip == 0) {
        adapter_ip = rawsock_get_adapter_ip(ifname);
        masscan->nic[index].src.ip.first = adapter_ip;
        masscan->nic[index].src.ip.last = adapter_ip;
        masscan->nic[index].src.ip.range = 1;
    }
    if (adapter_ip == 0) {
        fprintf(stderr, "FAIL: failed to detect IP of interface \"%s\"\n",
                        ifname);
        fprintf(stderr, " [hint] did you spell the name correctly?\n");
        fprintf(stderr, " [hint] if it has no IP address, manually set with "
                        "\"--adapter-ip 192.168.100.5\"\n");
        return -1;
    }
    LOG(2, "if:%s: adapter-ip=%u.%u.%u.%u\n",
        ifname,
        (adapter_ip>>24)&0xFF,
        (adapter_ip>>16)&0xFF,
        (adapter_ip>> 8)&0xFF,
        (adapter_ip>> 0)&0xFF
        );
    memcpy(adapter_mac, masscan->nic[index].my_mac, 6);
    if (masscan->nic[index].my_mac_count == 0) {
        if (memcmp(adapter_mac, "\0\0\0\0\0\0", 6) == 0) {
            rawsock_get_adapter_mac(ifname, adapter_mac);
        }
        if (memcmp(adapter_mac, "\0\0\0\0\0\0", 6) == 0) {
            fprintf(stderr, "FAIL: failed to detect MAC address of interface:"
                    " \"%s\"\n", ifname);
            fprintf(stderr, " [hint] try something like "
                    "\"--adapter-mac 00-11-22-33-44-55\"\n");
            return -1;
        }
    }
    LOG(2, "if:%s: adapter-mac=%02x-%02x-%02x-%02x-%02x-%02x\n",
        ifname,
        adapter_mac[0],
        adapter_mac[1],
        adapter_mac[2],
        adapter_mac[3],
        adapter_mac[4],
        adapter_mac[5]
        );
    masscan->nic[index].adapter = rawsock_init_adapter(
                                            ifname,
                                            masscan->is_pfring,
                                            masscan->is_sendq,
                                            masscan->nmap.packet_trace,
                                            masscan->is_offline,
                                            (void*)masscan->bpf_filter,
                                            masscan->nic[index].is_vlan,
                                            masscan->nic[index].vlan_id);
    if (masscan->nic[index].adapter == 0) {
        LOG(1, "if:%s:init: failed\n", ifname);
        return -1;
    }
    rawsock_ignore_transmits(masscan->nic[index].adapter, adapter_mac, ifname);
    memcpy(router_mac, masscan->nic[index].router_mac, 6);
    if (masscan->is_offline) {
        memcpy(router_mac, "\x66\x55\x44\x33\x22\x11", 6);
    } else if (memcmp(router_mac, "\0\0\0\0\0\0", 6) == 0) {
        unsigned router_ipv4 = masscan->nic[index].router_ip;
        int err = 0;


        LOG(1, "if:%s: looking for default gateway\n", ifname);
        if (router_ipv4 == 0)
            err = rawsock_get_default_gateway(ifname, &router_ipv4);
        if (err == 0) {
            LOG(2, "if:%s: router-ip=%u.%u.%u.%u\n",
                ifname,
                (router_ipv4>>24)&0xFF,
                (router_ipv4>>16)&0xFF,
                (router_ipv4>> 8)&0xFF,
                (router_ipv4>> 0)&0xFF
                );

            LOG(1, "if:%s:arp: resolving IPv4 address\n", ifname);
            arp_resolve_sync(
                    masscan->nic[index].adapter,
                    adapter_ip,
                    adapter_mac,
                    router_ipv4,
                    router_mac);

        }
    }
    LOG(2, "if:%s: router-mac=%02x-%02x-%02x-%02x-%02x-%02x\n",
        ifname,
        router_mac[0],
        router_mac[1],
        router_mac[2],
        router_mac[3],
        router_mac[4],
        router_mac[5]
        );
    if (memcmp(router_mac, "\0\0\0\0\0\0", 6) == 0) {
        LOG(0, "FAIL: failed to detect router for interface: \"%s\"\n", ifname);
        LOG(0, " [hint] try something like \"--router-mac 66-55-44-33-22-11\" to specify router\n");
        LOG(0, " [hint] try something like \"--interface eth0\" to change interface\n");
        return -1;
    }


    LOG(1, "if:%s: initialization done.\n", ifname);
    return 0;
}
