
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* member_0; char member_3; int * member_2; int member_1; } ;


 int detach_port (int ) ;
 int getopt_long (int,char**,char*,struct option const*,int *) ;
 int optarg ;

 int usbip_detach_usage () ;

int usbip_detach(int argc, char *argv[])
{
 static const struct option opts[] = {
  { "port", 128, ((void*)0), 'p' },
  { ((void*)0), 0, ((void*)0), 0 }
 };
 int opt;
 int ret = -1;

 for (;;) {
  opt = getopt_long(argc, argv, "p:", opts, ((void*)0));

  if (opt == -1)
   break;

  switch (opt) {
  case 'p':
   ret = detach_port(optarg);
   goto out;
  default:
   goto err_out;
  }
 }

err_out:
 usbip_detach_usage();
out:
 return ret;
}
