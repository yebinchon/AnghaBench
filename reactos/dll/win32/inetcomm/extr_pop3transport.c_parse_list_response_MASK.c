#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {scalar_t__ cbSize; scalar_t__ dwPopId; } ;
struct TYPE_5__ {int state; char* ptr; char* response; void* valid_info; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ POP3Transport ;
typedef  TYPE_2__ POP3LIST ;
typedef  int /*<<< orphan*/  HRESULT ;

/* Variables and functions */
 void* FALSE ; 
 int /*<<< orphan*/  POP3CMD_GET_POPID ; 
 void* STATE_DONE ; 
#define  STATE_MULTILINE 129 
#define  STATE_OK 128 
 int /*<<< orphan*/  S_FALSE ; 
 int /*<<< orphan*/  S_OK ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,scalar_t__*,...) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static HRESULT FUNC3(POP3Transport *This, POP3LIST *list)
{
    char *p;

    list->dwPopId = 0;
    list->cbSize = 0;
    switch (This->state)
    {
    case STATE_OK:
        if (This->type == POP3CMD_GET_POPID)
        {
            if ((p = FUNC2(This->ptr, ' ')))
            {
                while (*p == ' ') p++;
                FUNC1(p, "%u %u", &list->dwPopId, &list->cbSize);
                This->valid_info = TRUE;
            }
            This->state = STATE_DONE;
            return S_OK;
        }
        This->state = STATE_MULTILINE;
        return S_OK;

    case STATE_MULTILINE:
        if (This->response[0] == '.' && !This->response[1])
        {
            This->valid_info = FALSE;
            This->state = STATE_DONE;
            return S_OK;
        }
        FUNC1(This->response, "%u", &list->dwPopId);
        if ((p = FUNC2(This->response, ' ')))
        {
            while (*p == ' ') p++;
            FUNC1(p, "%u", &list->cbSize);
            This->valid_info = TRUE;
            return S_OK;
        }

    default:
        FUNC0("parse error\n");
        This->state = STATE_DONE;
        return S_FALSE;
    }
}