#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  first_page; } ;
typedef  TYPE_1__ HLPFILE ;
typedef  scalar_t__ BYTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ const HLP_DISPLAY ; 
 scalar_t__ const HLP_TABLE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__ const**) ; 
 unsigned int FUNC2 (scalar_t__ const**) ; 

__attribute__((used)) static BOOL FUNC3(HLPFILE *hlpfile, const BYTE *buf, const BYTE *end, unsigned* len)
{
    const BYTE  *tmp;

    if (!hlpfile->first_page) {FUNC0("no page\n"); return FALSE;};
    if (buf + 0x19 > end) {FUNC0("header too small\n"); return FALSE;};

    tmp = buf + 0x15;
    if (buf[0x14] == HLP_DISPLAY || buf[0x14] == HLP_TABLE)
    {
        FUNC1(&tmp);
        *len = FUNC2(&tmp);
    }
    else *len = end-buf-15;

    return TRUE;
}