#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int cValue; int /*<<< orphan*/ * rgValue; scalar_t__ pszObjId; } ;
struct TYPE_5__ {int cAttr; TYPE_2__* rgAttr; } ;
typedef  int /*<<< orphan*/ * PCRYPT_DATA_BLOB ;
typedef  scalar_t__ LPSTR ;
typedef  scalar_t__ LPBYTE ;
typedef  size_t DWORD ;
typedef  int /*<<< orphan*/  CRYPT_DATA_BLOB ;
typedef  TYPE_1__ CRYPT_ATTRIBUTES ;
typedef  TYPE_2__ CRYPT_ATTRIBUTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__*) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 

__attribute__((used)) static inline void FUNC4(CRYPT_ATTRIBUTES *out,
 const CRYPT_ATTRIBUTES *in, LPBYTE *nextData)
{
    out->cAttr = in->cAttr;
    if (in->cAttr)
    {
        DWORD i;

        *nextData = FUNC1(*nextData);
        out->rgAttr = (CRYPT_ATTRIBUTE *)*nextData;
        *nextData += in->cAttr * sizeof(CRYPT_ATTRIBUTE);
        for (i = 0; i < in->cAttr; i++)
        {
            if (in->rgAttr[i].pszObjId)
            {
                out->rgAttr[i].pszObjId = (LPSTR)*nextData;
                FUNC2(out->rgAttr[i].pszObjId, in->rgAttr[i].pszObjId);
                *nextData += FUNC3(in->rgAttr[i].pszObjId) + 1;
            }
            if (in->rgAttr[i].cValue)
            {
                DWORD j;

                out->rgAttr[i].cValue = in->rgAttr[i].cValue;
                *nextData = FUNC1(*nextData);
                out->rgAttr[i].rgValue = (PCRYPT_DATA_BLOB)*nextData;
                *nextData += in->rgAttr[i].cValue * sizeof(CRYPT_DATA_BLOB);
                for (j = 0; j < in->rgAttr[i].cValue; j++)
                    FUNC0(&out->rgAttr[i].rgValue[j],
                     &in->rgAttr[i].rgValue[j], nextData);
            }
        }
    }
}