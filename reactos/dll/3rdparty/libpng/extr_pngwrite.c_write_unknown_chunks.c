
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef TYPE_1__* png_structrp ;
typedef TYPE_2__* png_const_unknown_chunkp ;
typedef TYPE_3__* png_const_inforp ;
struct TYPE_11__ {scalar_t__ unknown_chunks_num; TYPE_2__* unknown_chunks; } ;
struct TYPE_10__ {unsigned int location; int* name; scalar_t__ size; int data; } ;
struct TYPE_9__ {int unknown_default; } ;


 int PNG_HANDLE_CHUNK_ALWAYS ;
 int PNG_HANDLE_CHUNK_AS_DEFAULT ;
 int PNG_HANDLE_CHUNK_NEVER ;
 int png_debug (int,char*) ;
 int png_handle_as_unknown (TYPE_1__*,int*) ;
 int png_warning (TYPE_1__*,char*) ;
 int png_write_chunk (TYPE_1__*,int*,int ,scalar_t__) ;

__attribute__((used)) static void
write_unknown_chunks(png_structrp png_ptr, png_const_inforp info_ptr,
    unsigned int where)
{
   if (info_ptr->unknown_chunks_num != 0)
   {
      png_const_unknown_chunkp up;

      png_debug(5, "writing extra chunks");

      for (up = info_ptr->unknown_chunks;
           up < info_ptr->unknown_chunks + info_ptr->unknown_chunks_num;
           ++up)
         if ((up->location & where) != 0)
      {
         {

            if (up->size == 0)
               png_warning(png_ptr, "Writing zero-length unknown chunk");

            png_write_chunk(png_ptr, up->name, up->data, up->size);
         }
      }
   }
}
