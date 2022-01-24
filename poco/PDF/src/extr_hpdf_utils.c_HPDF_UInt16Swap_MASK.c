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
typedef  scalar_t__ HPDF_BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__*,scalar_t__*,int) ; 

void
FUNC1  (HPDF_UINT16  *value)
{
    HPDF_BYTE u[2];

    FUNC0 (u, (HPDF_BYTE*)value, 2);
    *value = (HPDF_UINT16)((HPDF_UINT16)u[0] << 8 | (HPDF_UINT16)u[1]);
}