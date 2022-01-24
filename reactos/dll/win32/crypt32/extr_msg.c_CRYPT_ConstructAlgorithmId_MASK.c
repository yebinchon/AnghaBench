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
struct TYPE_4__ {int /*<<< orphan*/  Parameters; scalar_t__ pszObjId; } ;
typedef  TYPE_1__ CRYPT_ALGORITHM_IDENTIFIER ;
typedef  int /*<<< orphan*/  BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static BOOL FUNC4(CRYPT_ALGORITHM_IDENTIFIER *out,
 const CRYPT_ALGORITHM_IDENTIFIER *in)
{
    out->pszObjId = FUNC1(FUNC3(in->pszObjId) + 1);
    if (out->pszObjId)
    {
        FUNC2(out->pszObjId, in->pszObjId);
        return FUNC0(&out->Parameters, &in->Parameters);
    }
    else
        return FALSE;
}