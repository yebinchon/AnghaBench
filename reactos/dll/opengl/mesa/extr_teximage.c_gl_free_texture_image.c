
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_texture_image {struct gl_texture_image* Data; } ;


 int free (struct gl_texture_image*) ;

void gl_free_texture_image( struct gl_texture_image *teximage )
{
   if (teximage->Data) {
      free( teximage->Data );
   }
   free( teximage );
}
