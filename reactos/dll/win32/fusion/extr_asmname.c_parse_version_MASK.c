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
struct TYPE_3__ {int /*<<< orphan*/  versize; int /*<<< orphan*/ * version; } ;
typedef  char* LPWSTR ;
typedef  TYPE_1__ IAssemblyNameImpl ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  S_OK ; 
 char* FUNC0 (char*,char) ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static HRESULT FUNC2(IAssemblyNameImpl *name, LPWSTR version)
{
    LPWSTR beg, end;
    int i;

    for (i = 0, beg = version; i < 4; i++)
    {
        if (!*beg)
            return S_OK;

        end = FUNC0(beg, '.');

        if (end) *end = '\0';
        name->version[i] = FUNC1(beg, NULL, 10);
        name->versize++;

        if (!end && i < 3)
            return S_OK;

        beg = end + 1;
    }

    return S_OK;
}