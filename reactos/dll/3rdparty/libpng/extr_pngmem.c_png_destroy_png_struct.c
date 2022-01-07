
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * png_structrp ;
typedef int png_struct ;


 int memset (int *,int ,int) ;
 int png_free (int *,int *) ;
 int png_free_jmpbuf (int *) ;

void
png_destroy_png_struct(png_structrp png_ptr)
{
   if (png_ptr != ((void*)0))
   {



      png_struct dummy_struct = *png_ptr;
      memset(png_ptr, 0, (sizeof *png_ptr));
      png_free(&dummy_struct, png_ptr);





   }
}
