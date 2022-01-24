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
typedef  int /*<<< orphan*/  UINT ;
struct TYPE_3__ {int /*<<< orphan*/  Notify; scalar_t__ Self; } ;
typedef  int /*<<< orphan*/  LRESULT ;
typedef  int /*<<< orphan*/  LPARAM ;
typedef  TYPE_1__ IPADDRESS_INFO ;
typedef  scalar_t__ HWND ;

/* Variables and functions */
 int /*<<< orphan*/  GWLP_ID ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  WM_COMMAND ; 

__attribute__((used)) static LRESULT FUNC4 (const IPADDRESS_INFO *infoPtr, UINT command)
{
    HWND hwnd = infoPtr->Self;

    FUNC3("(command=%x)\n", command);

    return FUNC2 (infoPtr->Notify, WM_COMMAND,
             FUNC1 (FUNC0 (hwnd, GWLP_ID), command), (LPARAM)hwnd);
}