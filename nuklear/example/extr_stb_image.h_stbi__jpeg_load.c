
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * s; } ;
typedef TYPE_1__ stbi__jpeg ;
typedef int stbi__context ;


 unsigned char* load_jpeg_image (TYPE_1__*,int*,int*,int*,int) ;
 int stbi__setup_jpeg (TYPE_1__*) ;

__attribute__((used)) static unsigned char *stbi__jpeg_load(stbi__context *s, int *x, int *y, int *comp, int req_comp)
{
   stbi__jpeg j;
   j.s = s;
   stbi__setup_jpeg(&j);
   return load_jpeg_image(&j, x,y,comp,req_comp);
}
