#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ULONG ;
struct TYPE_7__ {TYPE_2__* pUnknown; int /*<<< orphan*/  lRefCnt; } ;
struct TYPE_6__ {TYPE_1__* lpVtbl; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* Release ) (int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  IUnknown ;
typedef  TYPE_3__ D3D9BaseObject ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

ULONG FUNC2(D3D9BaseObject* pBaseObject)
{
    ULONG Ref = 0;

    if (pBaseObject)
    {
        Ref = FUNC0(&pBaseObject->lRefCnt);

        if (Ref == 0)
        {
            if (pBaseObject->pUnknown)
            {
                pBaseObject->pUnknown->lpVtbl->Release((IUnknown*) &pBaseObject->pUnknown->lpVtbl);
            }
        }
    }

    return Ref;
}