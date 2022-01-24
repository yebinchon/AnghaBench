#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ png_uint_32 ;
typedef  TYPE_1__* png_structp ;
typedef  size_t png_size_t ;
typedef  TYPE_2__* png_infop ;
typedef  int* png_charp ;
typedef  int* png_bytep ;
typedef  int png_byte ;
struct TYPE_15__ {int valid; } ;
struct TYPE_14__ {int mode; } ;

/* Variables and functions */
 int PNG_HAVE_IDAT ; 
 int PNG_HAVE_IHDR ; 
 int PNG_HAVE_PLTE ; 
 int PNG_INFO_iCCP ; 
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int* FUNC3 (TYPE_1__*,int,int*,size_t,size_t,size_t*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,TYPE_2__*,int*,int,int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 

void /* PRIVATE */
FUNC9(png_structp png_ptr, png_infop info_ptr, png_uint_32 length)
/* Note: this does not properly handle chunks that are > 64K under DOS */
{
   png_charp chunkdata;
   png_byte compression_type;
   png_bytep pC;
   png_charp profile;
   png_uint_32 skip = 0;
   png_uint_32 profile_size, profile_length;
   png_size_t slength, prefix_length, data_length;

   FUNC2(1, "in png_handle_iCCP\n");

   if (!(png_ptr->mode & PNG_HAVE_IHDR))
      FUNC4(png_ptr, "Missing IHDR before iCCP");
   else if (png_ptr->mode & PNG_HAVE_IDAT)
   {
      FUNC8(png_ptr, "Invalid iCCP after IDAT");
      FUNC0(png_ptr, length);
      return;
   }
   else if (png_ptr->mode & PNG_HAVE_PLTE)
      /* Should be an error, but we can cope with it */
      FUNC8(png_ptr, "Out of place iCCP chunk");

   if (info_ptr != NULL && (info_ptr->valid & PNG_INFO_iCCP))
   {
      FUNC8(png_ptr, "Duplicate iCCP chunk");
      FUNC0(png_ptr, length);
      return;
   }

#ifdef PNG_MAX_MALLOC_64K
   if (length > (png_uint_32)65535L)
   {
      png_warning(png_ptr, "iCCP chunk too large to fit in memory");
      skip = length - (png_uint_32)65535L;
      length = (png_uint_32)65535L;
   }
#endif

   chunkdata = (png_charp)FUNC6(png_ptr, length + 1);
   slength = (png_size_t)length;
   FUNC1(png_ptr, (png_bytep)chunkdata, slength);

   if (FUNC0(png_ptr, skip))
   {
      FUNC5(png_ptr, chunkdata);
      return;
   }

   chunkdata[slength] = 0x00;

   for (profile = chunkdata; *profile; profile++)
      /* empty loop to find end of name */ ;

   ++profile;

   /* there should be at least one zero (the compression type byte)
      following the separator, and we should be on it  */
   if ( profile >= chunkdata + slength - 1)
   {
      FUNC5(png_ptr, chunkdata);
      FUNC8(png_ptr, "Malformed iCCP chunk");
      return;
   }

   /* compression_type should always be zero */
   compression_type = *profile++;
   if (compression_type)
   {
      FUNC8(png_ptr, "Ignoring nonzero compression type in iCCP chunk");
      compression_type=0x00;  /* Reset it to zero (libpng-1.0.6 through 1.0.8
                                 wrote nonzero) */
   }

   prefix_length = profile - chunkdata;
   chunkdata = FUNC3(png_ptr, compression_type, chunkdata,
                                    slength, prefix_length, &data_length);

   profile_length = data_length - prefix_length;

   if ( prefix_length > data_length || profile_length < 4)
   {
      FUNC5(png_ptr, chunkdata);
      FUNC8(png_ptr, "Profile size field missing from iCCP chunk");
      return;
   }

   /* Check the profile_size recorded in the first 32 bits of the ICC profile */
   pC = (png_bytep)(chunkdata+prefix_length);
   profile_size = ((*(pC  ))<<24) |
                  ((*(pC+1))<<16) |
                  ((*(pC+2))<< 8) |
                  ((*(pC+3))    );

   if(profile_size < profile_length)
      profile_length = profile_size;

   if(profile_size > profile_length)
   {
      FUNC5(png_ptr, chunkdata);
      FUNC8(png_ptr, "Ignoring truncated iCCP profile.");
      return;
   }

   FUNC7(png_ptr, info_ptr, chunkdata, compression_type,
                chunkdata + prefix_length, profile_length);
   FUNC5(png_ptr, chunkdata);
}