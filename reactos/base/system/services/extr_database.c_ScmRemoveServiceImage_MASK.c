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
typedef  int /*<<< orphan*/  VOID ;
struct TYPE_4__ {scalar_t__ hProcess; scalar_t__ hControlPipe; scalar_t__ hToken; int /*<<< orphan*/ * hProfile; int /*<<< orphan*/  ImageListEntry; } ;
typedef  TYPE_1__* PSERVICE_IMAGE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 scalar_t__ INVALID_HANDLE_VALUE ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

VOID
FUNC7(PSERVICE_IMAGE pServiceImage)
{
    FUNC1("ScmRemoveServiceImage() called\n");

    /* FIXME: Terminate the process */

    /* Remove the service image from the list */
    FUNC4(&pServiceImage->ImageListEntry);

    /* Close the process handle */
    if (pServiceImage->hProcess != INVALID_HANDLE_VALUE)
        FUNC0(pServiceImage->hProcess);

    /* Close the control pipe */
    if (pServiceImage->hControlPipe != INVALID_HANDLE_VALUE)
        FUNC0(pServiceImage->hControlPipe);

    /* Unload the user profile */
    if (pServiceImage->hProfile != NULL)
    {
        FUNC5(pServiceImage->hToken, TRUE);
        FUNC6(pServiceImage->hToken, pServiceImage->hProfile);
        FUNC5(pServiceImage->hToken, FALSE);
    }

    /* Close the logon token */
    if (pServiceImage->hToken != NULL)
        FUNC0(pServiceImage->hToken);

    /* Release the service image */
    FUNC3(FUNC2(), 0, pServiceImage);
}