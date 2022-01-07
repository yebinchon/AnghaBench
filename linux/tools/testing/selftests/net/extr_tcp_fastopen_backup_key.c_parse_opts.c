
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int KEY_LENGTH ;
 int do_ipv6 ;
 int do_rotate ;
 int do_sockopt ;
 int error (int,int ,char*,char*) ;
 int getopt (int,char**,char*) ;
 int key_len ;

__attribute__((used)) static void parse_opts(int argc, char **argv)
{
 int c;

 while ((c = getopt(argc, argv, "46sr")) != -1) {
  switch (c) {
  case '4':
   do_ipv6 = 0;
   break;
  case '6':
   do_ipv6 = 1;
   break;
  case 's':
   do_sockopt = 1;
   break;
  case 'r':
   do_rotate = 1;
   key_len = KEY_LENGTH * 2;
   break;
  default:
   error(1, 0, "%s: parse error", argv[0]);
  }
 }
}
