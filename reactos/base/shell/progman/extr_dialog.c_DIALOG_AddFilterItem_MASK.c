#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  VOID ;
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_2__ {int /*<<< orphan*/  hInstance; } ;
typedef  char* LPWSTR ;
typedef  int /*<<< orphan*/  LPCWSTR ;

/* Variables and functions */
 TYPE_1__ Globals ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  MAX_STRING_LEN ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*) ; 

__attribute__((used)) static
VOID
FUNC3(LPWSTR* p, UINT ids, LPCWSTR filter)
{
    FUNC0(Globals.hInstance, ids, *p, MAX_STRING_LEN);
    *p += FUNC2(*p) + 1;
    FUNC1(*p, filter);
    *p += FUNC2(*p) + 1;
    **p = '\0';
}