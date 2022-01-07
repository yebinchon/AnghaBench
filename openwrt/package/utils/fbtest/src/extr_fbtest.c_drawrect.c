
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vidsize {int width; } ;
struct rect {int width; int y; int x; int height; TYPE_1__* col; } ;
struct pixelformat {int pixenum; int bpp; } ;
struct pixel {int* byte; } ;
struct TYPE_2__ {int r; } ;







 int col2pixel (struct pixel*,struct pixelformat const*,TYPE_1__*) ;
 int exit (int) ;
 int memcpy (unsigned char*,int*,int) ;
 int printf (char*,int,int) ;

void drawrect(void *videoram, struct rect *r, const struct pixelformat *pixf, const struct vidsize *vids){
 int x,y,corwidth, bpp = 0, tocopy = 1;
 struct pixel pix;
 unsigned char *pmem = videoram;
 corwidth = r->width;

 if (pixf->pixenum!=130&&pixf->pixenum!=129){
  switch (pixf->pixenum){
   case 131:
   case 128:
    bpp = 16;
    tocopy = 2;
    break;
   case 132:
    bpp = 32;
    tocopy = 4;
    break;
   default:
    printf ("drawrect: unknown pixelformat(%d) bpp:%d\n",pixf->pixenum,pixf->bpp);
    exit(1);
  }
  col2pixel(&pix,pixf,r->col);
 } else {
  switch (pixf->pixenum){
   case 130:
    pix.byte[0]=(r->col->r)<<4|(r->col->r&0xf);
    corwidth>>=1;
    bpp=4;
    tocopy=1;
    break;
   case 129:
    pix.byte[0]=(r->col->r&0xff);
    bpp=8;
    tocopy=1;
    break;
  }
 }
 pmem=videoram+((((r->y*vids->width)+r->x)*bpp)>>3);
 for (y=0;y<r->height;y++){
  int offset = 0;
  for (x=0;x<corwidth;x++){
   memcpy (pmem+offset,pix.byte,tocopy);
   offset+=tocopy;
  }
  pmem +=((vids->width*bpp)>>3);
 }
}
