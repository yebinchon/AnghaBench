
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int png_structrp ;
typedef TYPE_1__* png_compression_bufferp ;
struct TYPE_4__ {struct TYPE_4__* next; } ;


 int png_free (int ,TYPE_1__*) ;

void
png_free_buffer_list(png_structrp png_ptr, png_compression_bufferp *listp)
{
   png_compression_bufferp list = *listp;

   if (list != ((void*)0))
   {
      *listp = ((void*)0);

      do
      {
         png_compression_bufferp next = list->next;

         png_free(png_ptr, list);
         list = next;
      }
      while (list != ((void*)0));
   }
}
