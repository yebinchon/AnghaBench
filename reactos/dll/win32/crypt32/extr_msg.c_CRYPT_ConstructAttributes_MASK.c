#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int cAttr; int /*<<< orphan*/ * rgAttr; } ;
typedef  size_t DWORD ;
typedef  TYPE_1__ CRYPT_ATTRIBUTES ;
typedef  int /*<<< orphan*/  CRYPT_ATTRIBUTE ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static BOOL FUNC3(CRYPT_ATTRIBUTES *out,
 const CRYPT_ATTRIBUTES *in)
{
    BOOL ret = TRUE;

    out->cAttr = in->cAttr;
    if (out->cAttr)
    {
        out->rgAttr = FUNC1(out->cAttr * sizeof(CRYPT_ATTRIBUTE));
        if (out->rgAttr)
        {
            DWORD i;

            FUNC2(out->rgAttr, 0, out->cAttr * sizeof(CRYPT_ATTRIBUTE));
            for (i = 0; ret && i < out->cAttr; i++)
                ret = FUNC0(&out->rgAttr[i], &in->rgAttr[i]);
        }
        else
            ret = FALSE;
    }
    else
        out->rgAttr = NULL;
    return ret;
}