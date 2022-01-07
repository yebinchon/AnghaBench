
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * s; } ;
typedef TYPE_1__ stbi__png ;
typedef int stbi__context ;


 int stbi__png_info_raw (TYPE_1__*,int*,int*,int*) ;

__attribute__((used)) static int stbi__png_info(stbi__context *s, int *x, int *y, int *comp)
{
   stbi__png p;
   p.s = s;
   return stbi__png_info_raw(&p, x, y, comp);
}
