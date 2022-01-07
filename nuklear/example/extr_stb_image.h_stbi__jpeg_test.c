
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * s; } ;
typedef TYPE_1__ stbi__jpeg ;
typedef int stbi__context ;


 int STBI__SCAN_type ;
 int stbi__decode_jpeg_header (TYPE_1__*,int ) ;
 int stbi__rewind (int *) ;
 int stbi__setup_jpeg (TYPE_1__*) ;

__attribute__((used)) static int stbi__jpeg_test(stbi__context *s)
{
   int r;
   stbi__jpeg j;
   j.s = s;
   stbi__setup_jpeg(&j);
   r = stbi__decode_jpeg_header(&j, STBI__SCAN_type);
   stbi__rewind(s);
   return r;
}
