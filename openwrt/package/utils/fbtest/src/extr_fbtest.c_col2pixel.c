
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pixelformat {int pixenum; } ;
struct pixel {int* byte; } ;
struct colour {int r; int g; int b; int a; } ;





 int exit (int) ;
 int printf (char*) ;

void col2pixel (struct pixel *pix, const struct pixelformat *pixf, const struct colour *col){
 switch (pixf->pixenum){
  case 128:
   pix->byte[0]=(col->r&0xf8)|(col->g&0xfc)>>5;
   pix->byte[1]=(col->g&0xfc)<<3|(col->b&0xf8)>>3;
   break;
  case 129:
   pix->byte[0]=(col->a&0x80)|(col->r&0xf8)>>1|(col->g&0xf8)>>6;
   pix->byte[1]=(col->g&0xf8)<<2|(col->b&0xf8)>>3;
   break;
  case 130:
   pix->byte[0]=col->a;
   pix->byte[1]=col->r;
   pix->byte[2]=col->g;
   pix->byte[3]=col->b;
   break;
  default:
   printf ("unknown pixelformat\n");
   exit(1);
 }
}
