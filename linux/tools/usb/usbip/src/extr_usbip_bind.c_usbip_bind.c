
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* member_0; char member_3; int * member_2; int member_1; } ;


 int bind_device (int ) ;
 int getopt_long (int,char**,char*,struct option const*,int *) ;
 int optarg ;

 int usbip_bind_usage () ;

int usbip_bind(int argc, char *argv[])
{
 static const struct option opts[] = {
  { "busid", 128, ((void*)0), 'b' },
  { ((void*)0), 0, ((void*)0), 0 }
 };

 int opt;
 int ret = -1;

 for (;;) {
  opt = getopt_long(argc, argv, "b:", opts, ((void*)0));

  if (opt == -1)
   break;

  switch (opt) {
  case 'b':
   ret = bind_device(optarg);
   goto out;
  default:
   goto err_out;
  }
 }

err_out:
 usbip_bind_usage();
out:
 return ret;
}
