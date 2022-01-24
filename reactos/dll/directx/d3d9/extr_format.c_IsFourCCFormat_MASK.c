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
typedef  int /*<<< orphan*/  D3DFORMAT ;
typedef  int /*<<< orphan*/  CHAR ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

BOOL FUNC1(D3DFORMAT Format)
{
    CHAR* cFormat = (CHAR*)&Format;
    if (FUNC0(cFormat[0]) &&
        FUNC0(cFormat[1]) &&
        FUNC0(cFormat[2]) &&
        FUNC0(cFormat[3]))
    {
        return TRUE;
    }

    return FALSE;
}