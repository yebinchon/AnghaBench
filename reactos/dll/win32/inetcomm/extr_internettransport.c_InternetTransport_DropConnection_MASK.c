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
struct TYPE_4__ {scalar_t__ Status; int /*<<< orphan*/ * hwnd; int /*<<< orphan*/  Socket; } ;
typedef  TYPE_1__ InternetTransport ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ IXP_DISCONNECTED ; 
 int /*<<< orphan*/  IXP_E_NOT_CONNECTED ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  SD_BOTH ; 
 int /*<<< orphan*/  S_OK ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

HRESULT FUNC4(InternetTransport *This)
{
    if (This->Status == IXP_DISCONNECTED)
        return IXP_E_NOT_CONNECTED;

    FUNC3(This->Socket, SD_BOTH);

    FUNC2(This->Socket);

    FUNC0(This->hwnd);
    This->hwnd = NULL;

    FUNC1(This, IXP_DISCONNECTED);

    return S_OK;
}