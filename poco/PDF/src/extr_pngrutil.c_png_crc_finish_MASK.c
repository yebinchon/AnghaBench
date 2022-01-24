#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ png_uint_32 ;
typedef  TYPE_1__* png_structp ;
typedef  scalar_t__ png_size_t ;
struct TYPE_7__ {scalar_t__ zbuf_size; int* chunk_name; int flags; int /*<<< orphan*/  zbuf; } ;

/* Variables and functions */
 int PNG_FLAG_CRC_ANCILLARY_NOWARN ; 
 int PNG_FLAG_CRC_CRITICAL_USE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,char*) ; 
 scalar_t__ FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,scalar_t__) ; 

int /* PRIVATE */
FUNC4(png_structp png_ptr, png_uint_32 skip)
{
   png_size_t i;
   png_size_t istop = png_ptr->zbuf_size;

   for (i = (png_size_t)skip; i > istop; i -= istop)
   {
      FUNC3(png_ptr, png_ptr->zbuf, png_ptr->zbuf_size);
   }
   if (i)
   {
      FUNC3(png_ptr, png_ptr->zbuf, i);
   }

   if (FUNC2(png_ptr))
   {
      if (((png_ptr->chunk_name[0] & 0x20) &&                /* Ancillary */
           !(png_ptr->flags & PNG_FLAG_CRC_ANCILLARY_NOWARN)) ||
          (!(png_ptr->chunk_name[0] & 0x20) &&             /* Critical  */
          (png_ptr->flags & PNG_FLAG_CRC_CRITICAL_USE)))
      {
         FUNC1(png_ptr, "CRC error");
      }
      else
      {
         FUNC0(png_ptr, "CRC error");
      }
      return (1);
   }

   return (0);
}