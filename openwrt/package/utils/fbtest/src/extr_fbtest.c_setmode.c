
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct vidsize {int height; int width; } ;
struct pixelformat {int transp; int blue; int green; int red; int bpp; } ;
struct fb_var_screeninfo {int transp; int blue; int green; int red; int bits_per_pixel; int yres_virtual; int yres; int xres_virtual; int xres; } ;


 int FBIOGET_VSCREENINFO ;
 int FBIOPUT_VSCREENINFO ;
 int ioctl (int,int ,struct fb_var_screeninfo*) ;

int setmode(int fbd, const struct pixelformat *pixf,const struct vidsize *vids){
 struct fb_var_screeninfo var;
 int stat;
 stat = ioctl (fbd, FBIOGET_VSCREENINFO,&var);
 if (stat<0) return -2;

 var.xres= vids->width;
 var.xres_virtual = vids->width;
 var.yres= vids->height;
 var.yres_virtual = vids->height;

 var.bits_per_pixel = pixf->bpp;
 var.red = pixf->red;
 var.green = pixf->green;
 var.blue = pixf->blue;
 var.transp = pixf->transp;

 stat = ioctl (fbd, FBIOPUT_VSCREENINFO,&var);
 if (stat<0) return -1;
 return 0;
}
