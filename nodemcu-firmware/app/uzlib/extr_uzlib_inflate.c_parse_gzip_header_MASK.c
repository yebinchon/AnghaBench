#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int uchar ;
struct TYPE_5__ {int (* get_byte ) () ;} ;
typedef  TYPE_1__ UZLIB_DATA ;

/* Variables and functions */
 int UZLIB_DATA_ERROR ; 
 int UZLIB_FCOMMENT ; 
 int UZLIB_FEXTRA ; 
 int UZLIB_FHCRC ; 
 int UZLIB_FNAME ; 
 int UZLIB_OK ; 
 int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int) ; 
 int FUNC2 () ; 
 int FUNC3 () ; 
 int FUNC4 () ; 
 int FUNC5 () ; 

__attribute__((used)) static int FUNC6(UZLIB_DATA *d) {

  /* check id bytes */
  if (d->get_byte() != 0x1f || d->get_byte() != 0x8b)
    return UZLIB_DATA_ERROR;

  if (d->get_byte() != 8) /* check method is deflate */
    return UZLIB_DATA_ERROR;

  uchar flg = d->get_byte();/* get flag byte */

  if (flg & 0xe0)/* check that reserved bits are zero */
    return UZLIB_DATA_ERROR;

  FUNC1(d, 6);            /* skip rest of base header of 10 bytes */

  if (flg & UZLIB_FEXTRA)            /* skip extra data if present */
     FUNC1(d, FUNC0(d));

  if (flg & UZLIB_FNAME)             /* skip file name if present */
    FUNC1(d,0);

  if (flg & UZLIB_FCOMMENT)          /* skip file comment if present */
    FUNC1(d,0);

  if (flg & UZLIB_FHCRC)             /* ignore header crc if present */
    FUNC1(d,2);

  return UZLIB_OK;
}