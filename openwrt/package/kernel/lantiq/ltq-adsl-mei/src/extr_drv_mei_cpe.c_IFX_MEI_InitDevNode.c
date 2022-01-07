
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENODEV ;
 int IFX_MEI_DEVNAME ;
 int IFX_MEI_EMSG (char*,int ,int ) ;
 int bsp_mei_operations ;
 int dev_major ;
 int register_chrdev (int ,int ,int *) ;

__attribute__((used)) static int
IFX_MEI_InitDevNode (int num)
{
 if (num == 0) {
  if ((dev_major = register_chrdev (dev_major, IFX_MEI_DEVNAME, &bsp_mei_operations)) < 0) {
   IFX_MEI_EMSG ("register_chrdev(%d %s) failed!\n", dev_major, IFX_MEI_DEVNAME);
   return -ENODEV;
  }
 }
 return 0;
}
