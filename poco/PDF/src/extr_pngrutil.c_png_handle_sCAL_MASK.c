#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ png_uint_32 ;
typedef  TYPE_1__* png_structp ;
typedef  size_t png_size_t ;
typedef  TYPE_2__* png_infop ;
typedef  int* png_charp ;
typedef  int /*<<< orphan*/  png_bytep ;
struct TYPE_17__ {int valid; } ;
struct TYPE_16__ {int mode; } ;

/* Variables and functions */
 int PNG_HAVE_IDAT ; 
 int PNG_HAVE_IHDR ; 
 int PNG_INFO_sCAL ; 
 scalar_t__ FUNC0 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int,char*) ; 
 int /*<<< orphan*/  FUNC3 (int,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int*) ; 
 scalar_t__ FUNC6 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int*,int*,size_t) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,TYPE_2__*,int,double,double) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,TYPE_2__*,int,int*,int*) ; 
 scalar_t__ FUNC10 (int*) ; 
 double FUNC11 (TYPE_1__*,int*,int**) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,char*) ; 

void /* PRIVATE */
FUNC13(png_structp png_ptr, png_infop info_ptr, png_uint_32 length)
{
   png_charp buffer, ep;
#ifdef PNG_FLOATING_POINT_SUPPORTED
   double width, height;
   png_charp vp;
#else
#ifdef PNG_FIXED_POINT_SUPPORTED
   png_charp swidth, sheight;
#endif
#endif
   png_size_t slength;

   FUNC2(1, "in png_handle_sCAL\n");

   if (!(png_ptr->mode & PNG_HAVE_IHDR))
      FUNC4(png_ptr, "Missing IHDR before sCAL");
   else if (png_ptr->mode & PNG_HAVE_IDAT)
   {
      FUNC12(png_ptr, "Invalid sCAL after IDAT");
      FUNC0(png_ptr, length);
      return;
   }
   else if (info_ptr != NULL && (info_ptr->valid & PNG_INFO_sCAL))
   {
      FUNC12(png_ptr, "Duplicate sCAL chunk");
      FUNC0(png_ptr, length);
      return;
   }

   FUNC3(2, "Allocating and reading sCAL chunk data (%lu bytes)\n",
      length + 1);
   buffer = (png_charp)FUNC6(png_ptr, length + 1);
   if (buffer == NULL)
     {
       FUNC12(png_ptr, "Out of memory while processing sCAL chunk");
       return;
     }
   slength = (png_size_t)length;
   FUNC1(png_ptr, (png_bytep)buffer, slength);

   if (FUNC0(png_ptr, 0))
   {
      FUNC5(png_ptr, buffer);
      return;
   }

   buffer[slength] = 0x00; /* null terminate the last string */

   ep = buffer + 1;        /* skip unit byte */

#ifdef PNG_FLOATING_POINT_SUPPORTED
   width = png_strtod(png_ptr, ep, &vp);
   if (*vp)
   {
       png_warning(png_ptr, "malformed width string in sCAL chunk");
       return;
   }
#else
#ifdef PNG_FIXED_POINT_SUPPORTED
   swidth = (png_charp)png_malloc_warn(png_ptr, png_strlen(ep) + 1);
   if (swidth == NULL)
     {
       png_warning(png_ptr, "Out of memory while processing sCAL chunk width");
       return;
     }
   png_memcpy(swidth, ep, (png_size_t)png_strlen(ep));
#endif
#endif

   for (ep = buffer; *ep; ep++)
      /* empty loop */ ;
   ep++;

   if (buffer + slength < ep)
   {
       FUNC12(png_ptr, "Truncated sCAL chunk");
#if defined(PNG_FIXED_POINT_SUPPORTED) && \
    !defined(PNG_FLOATING_POINT_SUPPORTED)
       png_free(png_ptr, swidth);
#endif
      FUNC5(png_ptr, buffer);
       return;
   }

#ifdef PNG_FLOATING_POINT_SUPPORTED
   height = png_strtod(png_ptr, ep, &vp);
   if (*vp)
   {
       png_warning(png_ptr, "malformed height string in sCAL chunk");
       return;
   }
#else
#ifdef PNG_FIXED_POINT_SUPPORTED
   sheight = (png_charp)png_malloc_warn(png_ptr, png_strlen(ep) + 1);
   if (swidth == NULL)
     {
       png_warning(png_ptr, "Out of memory while processing sCAL chunk height");
       return;
     }
   png_memcpy(sheight, ep, (png_size_t)png_strlen(ep));
#endif
#endif

   if (buffer + slength < ep
#ifdef PNG_FLOATING_POINT_SUPPORTED
      || width <= 0. || height <= 0.
#endif
      )
   {
      FUNC12(png_ptr, "Invalid sCAL data");
      FUNC5(png_ptr, buffer);
#if defined(PNG_FIXED_POINT_SUPPORTED) && !defined(PNG_FLOATING_POINT_SUPPORTED)
      png_free(png_ptr, swidth);
      png_free(png_ptr, sheight);
#endif
      return;
   }


#ifdef PNG_FLOATING_POINT_SUPPORTED
   png_set_sCAL(png_ptr, info_ptr, buffer[0], width, height);
#else
#ifdef PNG_FIXED_POINT_SUPPORTED
   png_set_sCAL_s(png_ptr, info_ptr, buffer[0], swidth, sheight);
#endif
#endif

   FUNC5(png_ptr, buffer);
#if defined(PNG_FIXED_POINT_SUPPORTED) && !defined(PNG_FLOATING_POINT_SUPPORTED)
   png_free(png_ptr, swidth);
   png_free(png_ptr, sheight);
#endif
}