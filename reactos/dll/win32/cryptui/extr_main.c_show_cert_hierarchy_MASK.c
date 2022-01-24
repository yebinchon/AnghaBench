#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct hierarchy_data {int /*<<< orphan*/  pCertViewInfo; } ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  IDC_VIEWCERTIFICATE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,struct hierarchy_data*) ; 

__attribute__((used)) static void FUNC4(HWND hwnd, struct hierarchy_data *data)
{
    /* Disable view certificate button until a certificate is selected */
    FUNC0(FUNC1(hwnd, IDC_VIEWCERTIFICATE), FALSE);
    FUNC3(hwnd, data);
    FUNC2(hwnd, data->pCertViewInfo);
}