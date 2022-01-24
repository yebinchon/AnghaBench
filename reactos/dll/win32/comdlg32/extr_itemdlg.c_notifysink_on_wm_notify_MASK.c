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
typedef  int /*<<< orphan*/  WPARAM ;
struct TYPE_2__ {int code; } ;
typedef  TYPE_1__ NMHDR ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  scalar_t__ LPARAM ;
typedef  int /*<<< orphan*/  HWND ;
typedef  int /*<<< orphan*/  FileDialogImpl ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
#define  TBN_DROPDOWN 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,scalar_t__) ; 

__attribute__((used)) static LRESULT FUNC1(FileDialogImpl *This, HWND hwnd, WPARAM wparam, LPARAM lparam)
{
    NMHDR *nmhdr = (NMHDR*)lparam;

    switch(nmhdr->code)
    {
    case TBN_DROPDOWN:        return FUNC0(This, lparam);
    }

    return FALSE;
}