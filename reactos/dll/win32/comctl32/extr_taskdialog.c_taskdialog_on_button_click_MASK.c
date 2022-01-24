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
struct taskdialog_info {int /*<<< orphan*/  hwnd; } ;
typedef  int /*<<< orphan*/  WORD ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ S_OK ; 
 int /*<<< orphan*/  TDN_BUTTON_CLICKED ; 
 scalar_t__ FUNC1 (struct taskdialog_info*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct taskdialog_info *dialog_info, WORD command_id)
{
    if (FUNC1(dialog_info, TDN_BUTTON_CLICKED, command_id, 0) == S_OK)
        FUNC0(dialog_info->hwnd, command_id);
}