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
typedef  int /*<<< orphan*/  jsdisp_t ;
typedef  int WCHAR ;
struct TYPE_3__ {int length; } ;
typedef  int DWORD ;
typedef  TYPE_1__ ArrayInstance ;

/* Variables and functions */
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int const) ; 

__attribute__((used)) static void FUNC2(jsdisp_t *dispex, const WCHAR *name)
{
    ArrayInstance *array = FUNC0(dispex);
    const WCHAR *ptr = name;
    DWORD id = 0;

    if(!FUNC1(*ptr))
        return;

    while(*ptr && FUNC1(*ptr)) {
        id = id*10 + (*ptr-'0');
        ptr++;
    }

    if(*ptr)
        return;

    if(id >= array->length)
        array->length = id+1;
}