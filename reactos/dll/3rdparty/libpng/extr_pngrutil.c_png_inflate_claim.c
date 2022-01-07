
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef scalar_t__ png_uint_32 ;
typedef TYPE_1__* png_structrp ;
struct TYPE_12__ {scalar_t__ avail_out; int * next_out; scalar_t__ avail_in; int * next_in; } ;
struct TYPE_11__ {scalar_t__ zowner; int options; int zstream_start; int flags; TYPE_6__ zstream; } ;


 int PNG_FLAG_ZSTREAM_INITIALIZED ;
 int PNG_IGNORE_ADLER32 ;
 int PNG_MAXIMUM_INFLATE_WINDOW ;
 int PNG_OPTION_ON ;
 int PNG_STRING_FROM_CHUNK (char*,scalar_t__) ;
 int Z_OK ;
 int inflateInit (TYPE_6__*) ;
 int inflateInit2 (TYPE_6__*,int) ;
 int inflateReset (TYPE_6__*) ;
 int inflateReset2 (TYPE_6__*,int) ;
 int inflateValidate (TYPE_6__*,int ) ;
 int png_chunk_error (TYPE_1__*,char*) ;
 int png_chunk_warning (TYPE_1__*,char*) ;
 int png_safecat (char*,int,int,char*) ;
 int png_zstream_error (TYPE_1__*,int) ;

__attribute__((used)) static int
png_inflate_claim(png_structrp png_ptr, png_uint_32 owner)
{
   if (png_ptr->zowner != 0)
   {
      char msg[64];

      PNG_STRING_FROM_CHUNK(msg, png_ptr->zowner);




      (void)png_safecat(msg, (sizeof msg), 4, " using zstream");




      png_chunk_error(png_ptr, msg);

   }
   {
      int ret;
      png_ptr->zstream.next_in = ((void*)0);
      png_ptr->zstream.avail_in = 0;
      png_ptr->zstream.next_out = ((void*)0);
      png_ptr->zstream.avail_out = 0;

      if ((png_ptr->flags & PNG_FLAG_ZSTREAM_INITIALIZED) != 0)
      {



         ret = inflateReset(&png_ptr->zstream);

      }

      else
      {



         ret = inflateInit(&png_ptr->zstream);


         if (ret == Z_OK)
            png_ptr->flags |= PNG_FLAG_ZSTREAM_INITIALIZED;
      }
      if (ret == Z_OK)
         png_ptr->zowner = owner;

      else
         png_zstream_error(png_ptr, ret);

      return ret;
   }




}
