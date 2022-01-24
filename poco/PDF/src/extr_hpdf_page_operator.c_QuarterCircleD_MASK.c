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
typedef  int HPDF_REAL ;

/* Variables and functions */
 char* FUNC0 (char*,int,char*) ; 
 scalar_t__ FUNC1 (char*,char*,char*) ; 
 int KAPPA ; 

__attribute__((used)) static char*
FUNC2  (char   *pbuf,
                 char   *eptr,
                 HPDF_REAL    x,
                 HPDF_REAL    y,
                 HPDF_REAL    ray)
{
    pbuf = FUNC0 (pbuf, x - ray * KAPPA, eptr);
    *pbuf++ = ' ';
    pbuf = FUNC0 (pbuf, y - ray, eptr);
    *pbuf++ = ' ';
    pbuf = FUNC0 (pbuf, x - ray, eptr);
    *pbuf++ = ' ';
    pbuf = FUNC0 (pbuf, y - ray * KAPPA, eptr);
    *pbuf++ = ' ';
    pbuf = FUNC0 (pbuf, x - ray, eptr);
    *pbuf++ = ' ';
    pbuf = FUNC0 (pbuf, y, eptr);
    return (char *)FUNC1 (pbuf, " c\012", eptr);
}