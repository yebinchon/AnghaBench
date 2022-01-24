#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ png_uint_32 ;
typedef  TYPE_1__* png_structp ;
typedef  int /*<<< orphan*/  png_byte ;
struct TYPE_4__ {int* chunk_name; int flags; scalar_t__ crc; } ;

/* Variables and functions */
 int PNG_FLAG_CRC_ANCILLARY_MASK ; 
 int PNG_FLAG_CRC_ANCILLARY_NOWARN ; 
 int PNG_FLAG_CRC_ANCILLARY_USE ; 
 int PNG_FLAG_CRC_CRITICAL_IGNORE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int) ; 

int /* PRIVATE */
FUNC2(png_structp png_ptr)
{
   png_byte crc_bytes[4];
   png_uint_32 crc;
   int need_crc = 1;

   if (png_ptr->chunk_name[0] & 0x20)                     /* ancillary */
   {
      if ((png_ptr->flags & PNG_FLAG_CRC_ANCILLARY_MASK) ==
          (PNG_FLAG_CRC_ANCILLARY_USE | PNG_FLAG_CRC_ANCILLARY_NOWARN))
         need_crc = 0;
   }
   else                                                    /* critical */
   {
      if (png_ptr->flags & PNG_FLAG_CRC_CRITICAL_IGNORE)
         need_crc = 0;
   }

   FUNC1(png_ptr, crc_bytes, 4);

   if (need_crc)
   {
      crc = FUNC0(crc_bytes);
      return ((int)(crc != png_ptr->crc));
   }
   else
      return (0);
}