
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef scalar_t__ png_uint_32 ;
typedef TYPE_1__* png_structp ;
typedef scalar_t__ png_size_t ;
typedef int png_infop ;
typedef int png_charp ;
typedef int * png_bytep ;
struct TYPE_16__ {char* name; int * data; scalar_t__ size; } ;
struct TYPE_15__ {int* chunk_name; int (* read_user_chunk_fn ) (TYPE_1__*,TYPE_3__*) ;int flags; TYPE_3__ unknown_chunk; } ;


 int PNG_FLAG_KEEP_UNKNOWN_CHUNKS ;
 scalar_t__ PNG_HANDLE_CHUNK_ALWAYS ;
 int png_check_chunk_name (TYPE_1__*,int*) ;
 int png_chunk_error (TYPE_1__*,char*) ;
 int png_crc_read (TYPE_1__*,int *,scalar_t__) ;
 int png_free (TYPE_1__*,int *) ;
 scalar_t__ png_handle_as_unknown (TYPE_1__*,int*) ;
 scalar_t__ png_malloc (TYPE_1__*,scalar_t__) ;
 int png_memcpy (int ,int ,int) ;
 int png_push_crc_skip (TYPE_1__*,scalar_t__) ;
 int png_set_unknown_chunks (TYPE_1__*,int ,TYPE_3__*,int) ;
 int png_sizeof (char*) ;
 int png_warning (TYPE_1__*,char*) ;
 int stub1 (TYPE_1__*,TYPE_3__*) ;

void
png_push_handle_unknown(png_structp png_ptr, png_infop info_ptr, png_uint_32
   length)
{
   png_uint_32 skip=0;
   png_check_chunk_name(png_ptr, png_ptr->chunk_name);

   if (!(png_ptr->chunk_name[0] & 0x20))
   {
        png_chunk_error(png_ptr, "unknown critical chunk");

     info_ptr = info_ptr;
   }
      skip=length;
   png_push_crc_skip(png_ptr, skip);
}
