#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  checksum; int /*<<< orphan*/  checksum_type; } ;
typedef  TYPE_1__ TINF_DATA ;

/* Variables and functions */
 unsigned char FCOMMENT ; 
 unsigned char FEXTRA ; 
 unsigned char FHCRC ; 
 unsigned char FNAME ; 
 int /*<<< orphan*/  TINF_CHKSUM_CRC ; 
 int TINF_DATA_ERROR ; 
 int TINF_OK ; 
 unsigned int FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned int) ; 
 int FUNC2 (TYPE_1__*) ; 

int FUNC3(TINF_DATA *d)
{
    unsigned char flg;

    /* -- check format -- */

    /* check id bytes */
    if (FUNC2(d) != 0x1f || FUNC2(d) != 0x8b) return TINF_DATA_ERROR;

    /* check method is deflate */
    if (FUNC2(d) != 8) return TINF_DATA_ERROR;

    /* get flag byte */
    flg = FUNC2(d);

    /* check that reserved bits are zero */
    if (flg & 0xe0) return TINF_DATA_ERROR;

    /* -- find start of compressed data -- */

    /* skip rest of base header of 10 bytes */
    FUNC1(d, 6);

    /* skip extra data if present */
    if (flg & FEXTRA)
    {
       unsigned int xlen = FUNC0(d);
       FUNC1(d, xlen);
    }

    /* skip file name if present */
    if (flg & FNAME) { while (FUNC2(d)); }

    /* skip file comment if present */
    if (flg & FCOMMENT) { while (FUNC2(d)); }

    /* check header crc if present */
    if (flg & FHCRC)
    {
       /*unsigned int hcrc =*/ FUNC0(d);

        // TODO: Check!
//       if (hcrc != (tinf_crc32(src, start - src) & 0x0000ffff))
//          return TINF_DATA_ERROR;
    }

    /* initialize for crc32 checksum */
    d->checksum_type = TINF_CHKSUM_CRC;
    d->checksum = ~0;

    return TINF_OK;
}