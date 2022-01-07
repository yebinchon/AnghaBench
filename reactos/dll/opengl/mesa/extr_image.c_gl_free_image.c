
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gl_image {struct gl_image* Data; } ;


 int free (struct gl_image*) ;

void gl_free_image( struct gl_image *image )
{
   if (image->Data) {
      free(image->Data);
   }
   free(image);
}
