
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int IPPROTO_RAW ;
 int IPPROTO_UDP ;
 scalar_t__ SOCK_DGRAM ;
 scalar_t__ SOCK_RAW ;
 scalar_t__ SOCK_STREAM ;
 void* cfg_delay_ack ;
 void* cfg_delay_snd ;
 int cfg_do_listen ;
 int cfg_do_pktinfo ;
 int cfg_ipproto ;
 int cfg_loop_nodata ;
 int cfg_no_delay ;
 void* cfg_num_pkts ;
 int cfg_payload_len ;
 int cfg_poll_timeout ;
 scalar_t__ cfg_proto ;
 int cfg_show_payload ;
 int cfg_use_cmsg ;
 int cfg_use_pf_packet ;
 void* dest_port ;
 scalar_t__ do_ipv4 ;
 scalar_t__ do_ipv6 ;
 int error (int,int ,char*) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 int optind ;
 void* strtoul (int ,int *,int) ;
 int usage (char*) ;

__attribute__((used)) static void parse_opt(int argc, char **argv)
{
 int proto_count = 0;
 int c;

 while ((c = getopt(argc, argv, "46c:CDFhIl:Lnp:PrRuv:V:x")) != -1) {
  switch (c) {
  case '4':
   do_ipv6 = 0;
   break;
  case '6':
   do_ipv4 = 0;
   break;
  case 'c':
   cfg_num_pkts = strtoul(optarg, ((void*)0), 10);
   break;
  case 'C':
   cfg_use_cmsg = 1;
   break;
  case 'D':
   cfg_no_delay = 1;
   break;
  case 'F':
   cfg_poll_timeout = -1;
   break;
  case 'I':
   cfg_do_pktinfo = 1;
   break;
  case 'l':
   cfg_payload_len = strtoul(optarg, ((void*)0), 10);
   break;
  case 'L':
   cfg_do_listen = 1;
   break;
  case 'n':
   cfg_loop_nodata = 1;
   break;
  case 'p':
   dest_port = strtoul(optarg, ((void*)0), 10);
   break;
  case 'P':
   proto_count++;
   cfg_use_pf_packet = 1;
   cfg_proto = SOCK_DGRAM;
   cfg_ipproto = 0;
   break;
  case 'r':
   proto_count++;
   cfg_proto = SOCK_RAW;
   cfg_ipproto = IPPROTO_UDP;
   break;
  case 'R':
   proto_count++;
   cfg_proto = SOCK_RAW;
   cfg_ipproto = IPPROTO_RAW;
   break;
  case 'u':
   proto_count++;
   cfg_proto = SOCK_DGRAM;
   cfg_ipproto = IPPROTO_UDP;
   break;
  case 'v':
   cfg_delay_snd = strtoul(optarg, ((void*)0), 10);
   break;
  case 'V':
   cfg_delay_ack = strtoul(optarg, ((void*)0), 10);
   break;
  case 'x':
   cfg_show_payload = 1;
   break;
  case 'h':
  default:
   usage(argv[0]);
  }
 }

 if (!cfg_payload_len)
  error(1, 0, "payload may not be nonzero");
 if (cfg_proto != SOCK_STREAM && cfg_payload_len > 1472)
  error(1, 0, "udp packet might exceed expected MTU");
 if (!do_ipv4 && !do_ipv6)
  error(1, 0, "pass -4 or -6, not both");
 if (proto_count > 1)
  error(1, 0, "pass -P, -r, -R or -u, not multiple");
 if (cfg_do_pktinfo && cfg_use_pf_packet)
  error(1, 0, "cannot ask for pktinfo over pf_packet");

 if (optind != argc - 1)
  error(1, 0, "missing required hostname argument");
}
