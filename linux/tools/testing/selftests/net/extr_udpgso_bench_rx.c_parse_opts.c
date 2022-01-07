
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockaddr_in {int dummy; } ;


 int PF_INET ;
 int PF_INET6 ;
 int cfg_alen ;
 int cfg_bind_addr ;
 void* cfg_connect_timeout_ms ;
 int cfg_expected_gso_size ;
 void* cfg_expected_pkt_len ;
 void* cfg_expected_pkt_nr ;
 int cfg_family ;
 int cfg_gro_segment ;
 void* cfg_port ;
 void* cfg_rcv_timeout_ms ;
 int cfg_read_all ;
 int cfg_tcp ;
 int cfg_verify ;
 int error (int,int ,char*) ;
 int getopt (int,char**,char*) ;
 char* optarg ;
 int optind ;
 int setup_sockaddr (int ,char*,int *) ;
 int strtol (char*,int *,int ) ;
 void* strtoul (char*,int *,int ) ;
 int usage (char*) ;

__attribute__((used)) static void parse_opts(int argc, char **argv)
{
 int c;


 setup_sockaddr(PF_INET6, "::", &cfg_bind_addr);
 while ((c = getopt(argc, argv, "4b:C:Gl:n:p:rR:S:tv")) != -1) {
  switch (c) {
  case '4':
   cfg_family = PF_INET;
   cfg_alen = sizeof(struct sockaddr_in);
   setup_sockaddr(PF_INET, "0.0.0.0", &cfg_bind_addr);
   break;
  case 'b':
   setup_sockaddr(cfg_family, optarg, &cfg_bind_addr);
   break;
  case 'C':
   cfg_connect_timeout_ms = strtoul(optarg, ((void*)0), 0);
   break;
  case 'G':
   cfg_gro_segment = 1;
   break;
  case 'l':
   cfg_expected_pkt_len = strtoul(optarg, ((void*)0), 0);
   break;
  case 'n':
   cfg_expected_pkt_nr = strtoul(optarg, ((void*)0), 0);
   break;
  case 'p':
   cfg_port = strtoul(optarg, ((void*)0), 0);
   break;
  case 'r':
   cfg_read_all = 1;
   break;
  case 'R':
   cfg_rcv_timeout_ms = strtoul(optarg, ((void*)0), 0);
   break;
  case 'S':
   cfg_expected_gso_size = strtol(optarg, ((void*)0), 0);
   break;
  case 't':
   cfg_tcp = 1;
   break;
  case 'v':
   cfg_verify = 1;
   cfg_read_all = 1;
   break;
  }
 }

 if (optind != argc)
  usage(argv[0]);

 if (cfg_tcp && cfg_verify)
  error(1, 0, "TODO: implement verify mode for tcp");
}
