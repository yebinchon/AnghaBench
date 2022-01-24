#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int /*<<< orphan*/  stg; } ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  EM_SETOLECALLBACK ; 
 int STGM_DELETEONRELEASE ; 
 int STGM_READWRITE ; 
 int STGM_SHARE_EXCLUSIVE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 TYPE_1__ olecallback ; 

HRESULT FUNC2(HWND hEditorWnd)
{
    HRESULT hr = FUNC1(NULL,
          STGM_READWRITE | STGM_SHARE_EXCLUSIVE | STGM_DELETEONRELEASE,
          0, &olecallback.stg);

    FUNC0(hEditorWnd, EM_SETOLECALLBACK, 0, (LPARAM)&olecallback);
    return hr;
}