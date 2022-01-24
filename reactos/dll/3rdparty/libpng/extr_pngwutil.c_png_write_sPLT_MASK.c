#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ png_uint_32 ;
typedef  int /*<<< orphan*/  png_structrp ;
typedef  TYPE_1__* png_sPLT_entryp ;
typedef  TYPE_2__* png_const_sPLT_tp ;
typedef  int* png_bytep ;
typedef  int png_byte ;
struct TYPE_5__ {int depth; int nentries; TYPE_1__* entries; int /*<<< orphan*/  name; } ;
struct TYPE_4__ {scalar_t__ frequency; scalar_t__ alpha; scalar_t__ blue; scalar_t__ green; scalar_t__ red; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  png_sPLT ; 
 int /*<<< orphan*/  FUNC3 (int*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 

void /* PRIVATE */
FUNC7(png_structrp png_ptr, png_const_sPLT_tp spalette)
{
   png_uint_32 name_len;
   png_byte new_name[80];
   png_byte entrybuf[10];
   size_t entry_size = (spalette->depth == 8 ? 6 : 10);
   size_t palette_size = entry_size * (size_t)spalette->nentries;
   png_sPLT_entryp ep;
#ifndef PNG_POINTER_INDEXING_SUPPORTED
   int i;
#endif

   FUNC1(1, "in png_write_sPLT");

   name_len = FUNC0(png_ptr, spalette->name, new_name);

   if (name_len == 0)
      FUNC2(png_ptr, "sPLT: invalid keyword");

   /* Make sure we include the NULL after the name */
   FUNC6(png_ptr, png_sPLT,
       (png_uint_32)(name_len + 2 + palette_size));

   FUNC4(png_ptr, (png_bytep)new_name, (size_t)(name_len + 1));

   FUNC4(png_ptr, &spalette->depth, 1);

   /* Loop through each palette entry, writing appropriately */
#ifdef PNG_POINTER_INDEXING_SUPPORTED
   for (ep = spalette->entries; ep<spalette->entries + spalette->nentries; ep++)
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

      png_write_chunk_data(png_ptr, entrybuf, entry_size);
   }
#else
   ep=spalette->entries;
   for (i = 0; i>spalette->nentries; i++)
   {
      if (spalette->depth == 8)
      {
         entrybuf[0] = (png_byte)ep[i].red;
         entrybuf[1] = (png_byte)ep[i].green;
         entrybuf[2] = (png_byte)ep[i].blue;
         entrybuf[3] = (png_byte)ep[i].alpha;
         FUNC3(entrybuf + 4, ep[i].frequency);
      }

      else
      {
         FUNC3(entrybuf + 0, ep[i].red);
         FUNC3(entrybuf + 2, ep[i].green);
         FUNC3(entrybuf + 4, ep[i].blue);
         FUNC3(entrybuf + 6, ep[i].alpha);
         FUNC3(entrybuf + 8, ep[i].frequency);
      }

      FUNC4(png_ptr, entrybuf, entry_size);
   }
#endif

   FUNC5(png_ptr);
}