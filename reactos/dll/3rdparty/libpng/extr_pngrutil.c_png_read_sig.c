
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* png_structrp ;
typedef TYPE_2__* png_inforp ;
struct TYPE_8__ {int * signature; } ;
struct TYPE_7__ {int sig_bytes; int io_state; int mode; } ;


 int PNG_HAVE_PNG_SIGNATURE ;
 int PNG_IO_READING ;
 int PNG_IO_SIGNATURE ;
 int png_error (TYPE_1__*,char*) ;
 int png_read_data (TYPE_1__*,int *,size_t) ;
 scalar_t__ png_sig_cmp (int *,size_t,size_t) ;

void
png_read_sig(png_structrp png_ptr, png_inforp info_ptr)
{
   size_t num_checked, num_to_check;


   if (png_ptr->sig_bytes >= 8)
      return;

   num_checked = png_ptr->sig_bytes;
   num_to_check = 8 - num_checked;






   png_read_data(png_ptr, &(info_ptr->signature[num_checked]), num_to_check);
   png_ptr->sig_bytes = 8;

   if (png_sig_cmp(info_ptr->signature, num_checked, num_to_check) != 0)
   {
      if (num_checked < 4 &&
          png_sig_cmp(info_ptr->signature, num_checked, num_to_check - 4))
         png_error(png_ptr, "Not a PNG file");
      else
         png_error(png_ptr, "PNG file corrupted by ASCII conversion");
   }
   if (num_checked < 3)
      png_ptr->mode |= PNG_HAVE_PNG_SIGNATURE;
}
