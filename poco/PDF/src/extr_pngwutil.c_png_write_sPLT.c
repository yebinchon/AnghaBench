
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int png_uint_32 ;
typedef int png_structp ;
typedef int png_size_t ;
typedef TYPE_1__* png_sPLT_tp ;
typedef TYPE_2__* png_sPLT_entryp ;
typedef scalar_t__ png_charp ;
typedef scalar_t__* png_bytep ;
typedef scalar_t__ png_byte ;
struct TYPE_5__ {scalar_t__ frequency; scalar_t__ alpha; scalar_t__ blue; scalar_t__ green; scalar_t__ red; } ;
struct TYPE_4__ {int depth; int nentries; TYPE_2__* entries; int * name; } ;


 int PNG_sPLT ;
 int png_check_keyword (int ,int *,scalar_t__*) ;
 int png_debug (int,char*) ;
 int png_free (int ,scalar_t__) ;
 int png_sPLT ;
 int png_save_uint_16 (scalar_t__*,scalar_t__) ;
 int png_warning (int ,char*) ;
 int png_write_chunk_data (int ,scalar_t__*,int) ;
 int png_write_chunk_end (int ) ;
 int png_write_chunk_start (int ,int ,int ) ;

void
png_write_sPLT(png_structp png_ptr, png_sPLT_tp spalette)
{



   png_size_t name_len;
   png_charp new_name;
   png_byte entrybuf[10];
   int entry_size = (spalette->depth == 8 ? 6 : 10);
   int palette_size = entry_size * spalette->nentries;
   png_sPLT_entryp ep;




   png_debug(1, "in png_write_sPLT\n");
   if (spalette->name == ((void*)0) || (name_len = png_check_keyword(png_ptr,
      spalette->name, &new_name))==0)
   {
      png_warning(png_ptr, "Empty keyword in sPLT chunk");
      return;
   }


   png_write_chunk_start(png_ptr, png_sPLT,
          (png_uint_32)(name_len + 2 + palette_size));
   png_write_chunk_data(png_ptr, (png_bytep)new_name, name_len + 1);
   png_write_chunk_data(png_ptr, (png_bytep)&spalette->depth, 1);



   for (ep = spalette->entries; ep<spalette->entries+spalette->nentries; ep++)
   {
       if (spalette->depth == 8)
       {
           entrybuf[0] = (png_byte)ep->red;
           entrybuf[1] = (png_byte)ep->green;
           entrybuf[2] = (png_byte)ep->blue;
           entrybuf[3] = (png_byte)ep->alpha;
           png_save_uint_16(entrybuf + 4, ep->frequency);
       }
       else
       {
           png_save_uint_16(entrybuf + 0, ep->red);
           png_save_uint_16(entrybuf + 2, ep->green);
           png_save_uint_16(entrybuf + 4, ep->blue);
           png_save_uint_16(entrybuf + 6, ep->alpha);
           png_save_uint_16(entrybuf + 8, ep->frequency);
       }
       png_write_chunk_data(png_ptr, entrybuf, (png_size_t)entry_size);
   }
   png_write_chunk_end(png_ptr);
   png_free(png_ptr, new_name);
}
