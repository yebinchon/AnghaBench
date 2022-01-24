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
struct TYPE_3__ {int /*<<< orphan*/  wAttributes; } ;
typedef  int DWORD ;
typedef  TYPE_1__ CONSOLE_SCREEN_BUFFER_INFO ;

/* Variables and functions */
 int ENABLE_PROCESSED_OUTPUT ; 
 int ENABLE_WRAP_AT_EOL_OUTPUT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  hSTDERR ; 
 int /*<<< orphan*/  hSTDOUT ; 
 int /*<<< orphan*/  stdoutAttrs ; 

void FUNC3(void)
{
    CONSOLE_SCREEN_BUFFER_INFO cinfo;
    DWORD cmode = 0;
    FUNC0(hSTDOUT, &cmode);
    cmode |= (ENABLE_PROCESSED_OUTPUT | ENABLE_WRAP_AT_EOL_OUTPUT);
    FUNC2(hSTDOUT, cmode);
    FUNC2(hSTDERR, cmode);
    FUNC1(hSTDOUT, &cinfo);
    stdoutAttrs = cinfo.wAttributes;
}