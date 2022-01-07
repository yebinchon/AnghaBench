
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {char* member_0; char member_3; int * member_2; int const member_1; } ;


 int USBIDS_FILE ;
 int err (char*,int ) ;
 int getopt_long (int,char**,char*,struct option const*,int *) ;
 int list_devices (int) ;
 int list_exported_devices (int ) ;
 int list_gadget_devices (int) ;

 int optarg ;

 int usbip_list_usage () ;
 int usbip_names_free () ;
 scalar_t__ usbip_names_init (int ) ;

int usbip_list(int argc, char *argv[])
{
 static const struct option opts[] = {
  { "parsable", 129, ((void*)0), 'p' },
  { "remote", 128, ((void*)0), 'r' },
  { "local", 129, ((void*)0), 'l' },
  { "device", 129, ((void*)0), 'd' },
  { ((void*)0), 0, ((void*)0), 0 }
 };

 bool parsable = 0;
 int opt;
 int ret = -1;

 if (usbip_names_init(USBIDS_FILE))
  err("failed to open %s", USBIDS_FILE);

 for (;;) {
  opt = getopt_long(argc, argv, "pr:ld", opts, ((void*)0));

  if (opt == -1)
   break;

  switch (opt) {
  case 'p':
   parsable = 1;
   break;
  case 'r':
   ret = list_exported_devices(optarg);
   goto out;
  case 'l':
   ret = list_devices(parsable);
   goto out;
  case 'd':
   ret = list_gadget_devices(parsable);
   goto out;
  default:
   goto err_out;
  }
 }

err_out:
 usbip_list_usage();
out:
 usbip_names_free();

 return ret;
}
