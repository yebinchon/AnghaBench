
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* png_structrp ;
struct TYPE_4__ {int flags; int mode; } ;


 int PNG_FLAG_DETECT_UNINITIALIZED ;
 int PNG_FLAG_ROW_INIT ;
 int PNG_HAVE_IHDR ;
 int png_app_error (TYPE_1__*,char*) ;

__attribute__((used)) static int
png_rtran_ok(png_structrp png_ptr, int need_IHDR)
{
   if (png_ptr != ((void*)0))
   {
      if ((png_ptr->flags & PNG_FLAG_ROW_INIT) != 0)
         png_app_error(png_ptr,
             "invalid after png_start_read_image or png_read_update_info");

      else if (need_IHDR && (png_ptr->mode & PNG_HAVE_IHDR) == 0)
         png_app_error(png_ptr, "invalid before the PNG header has been read");

      else
      {

         png_ptr->flags |= PNG_FLAG_DETECT_UNINITIALIZED;

         return 1;
      }
   }

   return 0;
}
