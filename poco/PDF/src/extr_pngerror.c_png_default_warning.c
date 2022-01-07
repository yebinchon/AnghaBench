
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int png_structp ;
typedef char* png_const_charp ;


 int fprintf (int ,char*,char*,...) ;
 int stderr ;

__attribute__((used)) static void
png_default_warning(png_structp png_ptr, png_const_charp warning_message)
{
     fprintf(stderr, "libpng warning: %s\n", warning_message);



   png_ptr = png_ptr;
}
