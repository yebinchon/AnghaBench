
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int sa_family; int sa_data; } ;
struct TYPE_4__ {TYPE_1__ ifru_hwaddr; } ;
struct ifreq {TYPE_2__ ifr_ifru; int ifr_name; } ;


 int AF_INET ;
 int IFNAMSIZ ;
 int LOG (int,char*,char const*,...) ;
 int SIOCGIFHWADDR ;
 int SOCK_STREAM ;
 int close (int) ;
 int ioctl (int,int ,char*) ;
 scalar_t__ memcmp (unsigned char*,char*,int) ;
 int memcpy (unsigned char*,int ,int) ;
 int perror (char*) ;
 int socket (int ,int ,int ) ;
 int strcpy_s (int ,int ,char const*) ;

int
rawsock_get_adapter_mac(const char *ifname, unsigned char *mac)
{
    int fd;
    int x;
    struct ifreq ifr;


    fd = socket(AF_INET, SOCK_STREAM, 0);
    if(fd < 0){
        perror("socket");
        goto end;
    }

    strcpy_s(ifr.ifr_name, IFNAMSIZ, ifname);
    x = ioctl(fd, SIOCGIFHWADDR, (char *)&ifr);
    if (x < 0) {
        perror("ioctl");
        goto end;
    }


    switch (ifr.ifr_ifru.ifru_hwaddr.sa_family) {
    case 1:
        LOG(1, "if:%s: type=ethernet(1)\n", ifname);
        break;
    default:
        LOG(1, "if:%s: type=0x%04x\n", ifname, ifr.ifr_ifru.ifru_hwaddr.sa_family);
    }


    memcpy(mac, ifr.ifr_ifru.ifru_hwaddr.sa_data, 6);






    if (memcmp(mac, "\0\0\0\0\0\0", 6) == 0
            && ifr.ifr_ifru.ifru_hwaddr.sa_family == 0xfffe) {
        LOG(1, "%s: creating fake address\n", ifname);
        mac[5] = 1;
    }

end:
    close(fd);
    return 0;
}
