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
struct TYPE_3__ {scalar_t__ Status; int cbBuffer; int /*<<< orphan*/  hwnd; int /*<<< orphan*/  Socket; scalar_t__ iCurrentBufferOffset; int /*<<< orphan*/  pBuffer; scalar_t__ fnCompletion; } ;
typedef  TYPE_1__ InternetTransport ;
typedef  scalar_t__ INETXPORT_COMPLETION_FUNCTION ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FD_READ ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 scalar_t__ IXP_DISCONNECTED ; 
 int /*<<< orphan*/  IXP_E_BUSY ; 
 int /*<<< orphan*/  IXP_E_NOT_CONNECTED ; 
 int /*<<< orphan*/  IX_READLINE ; 
 scalar_t__ SOCKET_ERROR ; 
 int /*<<< orphan*/  S_OK ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 

HRESULT FUNC5(InternetTransport *This,
    INETXPORT_COMPLETION_FUNCTION fnCompletion)
{
    if (This->Status == IXP_DISCONNECTED)
        return IXP_E_NOT_CONNECTED;

    if (This->fnCompletion)
        return IXP_E_BUSY;

    This->fnCompletion = fnCompletion;

    This->cbBuffer = 1024;
    This->pBuffer = FUNC2(FUNC1(), 0, This->cbBuffer);
    This->iCurrentBufferOffset = 0;

    if (FUNC3(This->Socket, This->hwnd, IX_READLINE, FD_READ) == SOCKET_ERROR)
    {
        FUNC0("WSAAsyncSelect failed with error %d\n", FUNC4());
        /* FIXME: handle error */
    }
    return S_OK;
}