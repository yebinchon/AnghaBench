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
struct TYPE_4__ {int /*<<< orphan*/  pCertContext; } ;
typedef  TYPE_1__* PCCRYPTUI_VIEWCERTIFICATE_STRUCTW ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  CERT_NAME_ISSUER_FLAG ; 
 int /*<<< orphan*/  IDS_ISSUER_HEADING ; 
 int /*<<< orphan*/  IDS_SUBJECT_HEADING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(HWND hwnd,
 PCCRYPTUI_VIEWCERTIFICATE_STRUCTW pCertViewInfo)
{
    FUNC0(hwnd, pCertViewInfo);
    FUNC1(hwnd, pCertViewInfo->pCertContext, 0,
     IDS_SUBJECT_HEADING);
    FUNC1(hwnd, pCertViewInfo->pCertContext,
     CERT_NAME_ISSUER_FLAG, IDS_ISSUER_HEADING);
    FUNC2(hwnd, pCertViewInfo->pCertContext);
}