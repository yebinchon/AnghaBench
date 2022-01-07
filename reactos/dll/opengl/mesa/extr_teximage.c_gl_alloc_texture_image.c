
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_texture_image {int dummy; } ;


 scalar_t__ calloc (int,int) ;

struct gl_texture_image *gl_alloc_texture_image( void )
{
   return (struct gl_texture_image *) calloc( 1, sizeof(struct gl_texture_image) );
}
