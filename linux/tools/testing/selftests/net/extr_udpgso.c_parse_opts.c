
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cfg_do_connected ;
 int cfg_do_connectionless ;
 int cfg_do_ipv4 ;
 int cfg_do_ipv6 ;
 int cfg_do_msgmore ;
 int cfg_do_setsockopt ;
 int cfg_specific_test_id ;
 int error (int,int ,char*,char*) ;
 int getopt (int,char**,char*) ;
 int optarg ;
 int strtoul (int ,int *,int ) ;

__attribute__((used)) static void parse_opts(int argc, char **argv)
{
 int c;

 while ((c = getopt(argc, argv, "46cCmst:")) != -1) {
  switch (c) {
  case '4':
   cfg_do_ipv4 = 1;
   break;
  case '6':
   cfg_do_ipv6 = 1;
   break;
  case 'c':
   cfg_do_connected = 1;
   break;
  case 'C':
   cfg_do_connectionless = 1;
   break;
  case 'm':
   cfg_do_msgmore = 1;
   break;
  case 's':
   cfg_do_setsockopt = 1;
   break;
  case 't':
   cfg_specific_test_id = strtoul(optarg, ((void*)0), 0);
   break;
  default:
   error(1, 0, "%s: parse error", argv[0]);
  }
 }
}
