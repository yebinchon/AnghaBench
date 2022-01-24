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
struct TYPE_3__ {int Status; char* pDriverName; char* pLocation; char* pPortName; char* pComment; } ;
typedef  TYPE_1__ PRINTER_INFO_2A ;
typedef  int /*<<< orphan*/  HWND ;

/* Variables and functions */
 int /*<<< orphan*/  COMDLG32_hInstance ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__,char*,int) ; 
 scalar_t__ PD32_PRINTER_STATUS_PAUSED ; 
 scalar_t__ PD32_PRINTER_STATUS_READY ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  stc11 ; 
 int /*<<< orphan*/  stc12 ; 
 int /*<<< orphan*/  stc13 ; 
 int /*<<< orphan*/  stc14 ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 

__attribute__((used)) static void FUNC3(HWND hDlg, const PRINTER_INFO_2A *pi)
{
    char   StatusMsg[256];
    char   ResourceString[256];
    int    i;

    /* Status Message */
    StatusMsg[0]='\0';

    /* add all status messages */
    for (i = 0; i < 25; i++) {
        if (pi->Status & (1<<i)) {
	    FUNC0(COMDLG32_hInstance, PD32_PRINTER_STATUS_PAUSED+i,
			ResourceString, 255);
	    FUNC2(StatusMsg,ResourceString);
        }
    }
    /* append "ready" */
    /* FIXME: status==ready must only be appended if really so.
              but how to detect? */
    FUNC0(COMDLG32_hInstance, PD32_PRINTER_STATUS_READY,
		ResourceString, 255);
    FUNC2(StatusMsg,ResourceString);
    FUNC1(hDlg, stc12, StatusMsg);

    /* set all other printer info texts */
    FUNC1(hDlg, stc11, pi->pDriverName);
    
    if (pi->pLocation != NULL && pi->pLocation[0] != '\0')
        FUNC1(hDlg, stc14, pi->pLocation);
    else
        FUNC1(hDlg, stc14, pi->pPortName);
    FUNC1(hDlg, stc13, pi->pComment ? pi->pComment : "");
    return;
}