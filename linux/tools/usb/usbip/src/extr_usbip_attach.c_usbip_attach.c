
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* member_0; char member_3; int * member_2; int const member_1; } ;


 int attach_device (char*,char*) ;
 int getopt_long (int,char**,char*,struct option const*,int *) ;
 char* optarg ;

 int usbip_attach_usage () ;

int usbip_attach(int argc, char *argv[])
{
 static const struct option opts[] = {
  { "remote", 128, ((void*)0), 'r' },
  { "busid", 128, ((void*)0), 'b' },
  { "device", 128, ((void*)0), 'd' },
  { ((void*)0), 0, ((void*)0), 0 }
 };
 char *host = ((void*)0);
 char *busid = ((void*)0);
 int opt;
 int ret = -1;

 for (;;) {
  opt = getopt_long(argc, argv, "d:r:b:", opts, ((void*)0));

  if (opt == -1)
   break;

  switch (opt) {
  case 'r':
   host = optarg;
   break;
  case 'd':
  case 'b':
   busid = optarg;
   break;
  default:
   goto err_out;
  }
 }

 if (!host || !busid)
  goto err_out;

 ret = attach_device(host, busid);
 goto out;

err_out:
 usbip_attach_usage();
out:
 return ret;
}
