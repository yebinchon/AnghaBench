
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_2__* png_structrp ;
struct TYPE_6__ {scalar_t__ avail_in; int * next_in; int * next_out; } ;
struct TYPE_7__ {int flags; scalar_t__ zowner; int idat_size; TYPE_1__ zstream; int mode; } ;


 int PNG_AFTER_IDAT ;
 int PNG_FLAG_ZSTREAM_ENDED ;
 scalar_t__ png_IDAT ;
 int png_crc_finish (TYPE_2__*,int ) ;
 int png_read_IDAT_data (TYPE_2__*,int *,int ) ;

void
png_read_finish_IDAT(png_structrp png_ptr)
{





   if ((png_ptr->flags & PNG_FLAG_ZSTREAM_ENDED) == 0)
   {




      png_read_IDAT_data(png_ptr, ((void*)0), 0);
      png_ptr->zstream.next_out = ((void*)0);




      if ((png_ptr->flags & PNG_FLAG_ZSTREAM_ENDED) == 0)
      {
         png_ptr->mode |= PNG_AFTER_IDAT;
         png_ptr->flags |= PNG_FLAG_ZSTREAM_ENDED;
      }
   }




   if (png_ptr->zowner == png_IDAT)
   {

      png_ptr->zstream.next_in = ((void*)0);
      png_ptr->zstream.avail_in = 0;


      png_ptr->zowner = 0;






      (void)png_crc_finish(png_ptr, png_ptr->idat_size);
   }
}
