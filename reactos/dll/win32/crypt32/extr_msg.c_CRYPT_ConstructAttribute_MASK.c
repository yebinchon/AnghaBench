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
struct TYPE_4__ {int /*<<< orphan*/  rgValue; int /*<<< orphan*/  cValue; scalar_t__ pszObjId; } ;
typedef  TYPE_1__ CRYPT_ATTRIBUTE ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static BOOL FUNC4(CRYPT_ATTRIBUTE *out,
 const CRYPT_ATTRIBUTE *in)
{
    BOOL ret;

    out->pszObjId = FUNC1(FUNC3(in->pszObjId) + 1);
    if (out->pszObjId)
    {
        FUNC2(out->pszObjId, in->pszObjId);
        ret = FUNC0(&out->cValue, &out->rgValue,
         in->cValue, in->rgValue);
    }
    else
        ret = FALSE;
    return ret;
}