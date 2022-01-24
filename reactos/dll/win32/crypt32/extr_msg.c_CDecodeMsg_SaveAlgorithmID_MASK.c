#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  nullParams ;
struct TYPE_10__ {int /*<<< orphan*/  properties; } ;
struct TYPE_8__ {int cbData; int /*<<< orphan*/ * pbData; } ;
struct TYPE_9__ {TYPE_1__ Parameters; scalar_t__ pszObjId; } ;
typedef  scalar_t__ LPSTR ;
typedef  int DWORD ;
typedef  TYPE_2__ CRYPT_ALGORITHM_IDENTIFIER ;
typedef  TYPE_3__ CDecodeMsg ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
#define  ASN_NULL 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 TYPE_2__* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,scalar_t__) ; 
 int FUNC6 (scalar_t__) ; 

__attribute__((used)) static void FUNC7(CDecodeMsg *msg, DWORD param,
 const CRYPT_ALGORITHM_IDENTIFIER *id)
{
    static const BYTE nullParams[] = { ASN_NULL, 0 };
    CRYPT_ALGORITHM_IDENTIFIER *copy;
    DWORD len = sizeof(CRYPT_ALGORITHM_IDENTIFIER);

    /* Linearize algorithm id */
    len += FUNC6(id->pszObjId) + 1;
    len += id->Parameters.cbData;
    copy = FUNC1(len);
    if (copy)
    {
        copy->pszObjId =
         (LPSTR)((BYTE *)copy + sizeof(CRYPT_ALGORITHM_IDENTIFIER));
        FUNC5(copy->pszObjId, id->pszObjId);
        copy->Parameters.pbData = (BYTE *)copy->pszObjId + FUNC6(id->pszObjId)
         + 1;
        /* Trick:  omit NULL parameters */
        if (id->Parameters.cbData == sizeof(nullParams) &&
         !FUNC3(id->Parameters.pbData, nullParams, sizeof(nullParams)))
        {
            copy->Parameters.cbData = 0;
            len -= sizeof(nullParams);
        }
        else
            copy->Parameters.cbData = id->Parameters.cbData;
        if (copy->Parameters.cbData)
            FUNC4(copy->Parameters.pbData, id->Parameters.pbData,
             id->Parameters.cbData);
        FUNC0(msg->properties, param, (BYTE *)copy,
         len);
        FUNC2(copy);
    }
}