#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int HPDF_UINT16 ;
typedef  int HPDF_BYTE ;

/* Variables and functions */
 char* FUNC0 (char*,int,char*,int) ; 

__attribute__((used)) static char*
FUNC1  (char        *s,
                HPDF_UINT16  from,
                HPDF_UINT16  to,
                char        *eptr)
{
    HPDF_BYTE width = (to > 255) ? 2 : 1;
    char *pbuf;

    pbuf = FUNC0 (s, from, eptr, width);
    *pbuf++ = ' ';
    pbuf = FUNC0 (pbuf, to, eptr, width);

    return pbuf;
}