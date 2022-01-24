#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct detail_data {TYPE_1__* pCertViewInfo; } ;
struct TYPE_8__ {scalar_t__ fCritical; } ;
struct TYPE_7__ {TYPE_2__* pCertInfo; } ;
struct TYPE_6__ {size_t cExtension; TYPE_4__* rgExtension; } ;
struct TYPE_5__ {TYPE_3__* pCertContext; } ;
typedef  TYPE_3__* PCCERT_CONTEXT ;
typedef  int /*<<< orphan*/  HWND ;
typedef  size_t DWORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct detail_data*,TYPE_4__*) ; 

__attribute__((used)) static void FUNC1(HWND hwnd, struct detail_data *data)
{
    DWORD i;
    PCCERT_CONTEXT cert = data->pCertViewInfo->pCertContext;

    for (i = 0; i < cert->pCertInfo->cExtension; i++)
        if (cert->pCertInfo->rgExtension[i].fCritical)
            FUNC0(hwnd, data,
             &cert->pCertInfo->rgExtension[i]);
}