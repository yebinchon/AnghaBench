
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct usbentry {int dummy; } ;


 struct usbentry* find_device (int*,int*,int*,int*,char*) ;
 int fprintf (int ,char*) ;
 int list_devices () ;
 int printf (char*) ;
 int reset_device (struct usbentry*) ;
 int sscanf (char*,char*,int*,int*) ;
 int stderr ;
 int strlen (char*) ;

int main(int argc, char **argv)
{
 int id1, id2;
 struct usbentry *dev;

 if ((argc == 2) && (sscanf(argv[1], "%3d/%3d", &id1, &id2) == 2))
 {
  dev = find_device(&id1, &id2, ((void*)0), ((void*)0), ((void*)0));
 }
 else if ((argc == 2) && (sscanf(argv[1], "%4x:%4x", &id1, &id2) == 2))
 {
  dev = find_device(((void*)0), ((void*)0), &id1, &id2, ((void*)0));
 }
 else if ((argc == 2) && strlen(argv[1]) < 128)
 {
  dev = find_device(((void*)0), ((void*)0), ((void*)0), ((void*)0), argv[1]);
 }
 else
 {
  printf("Usage:\n"
         "  usbreset PPPP:VVVV - reset by product and vendor id\n"
         "  usbreset BBB/DDD   - reset by bus and device number\n"
         "  usbreset \"Product\" - reset by product name\n\n"
         "Devices:\n");
  list_devices();
  return 1;
 }

 if (!dev)
 {
  fprintf(stderr, "No such device found\n");
  return 1;
 }

 reset_device(dev);
 return 0;
}
