#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ state; } ;
struct TYPE_9__ {TYPE_2__ filter; TYPE_1__* pInputPin; int /*<<< orphan*/  csRenderLock; } ;
struct TYPE_10__ {int in_loop; scalar_t__ buf_size; scalar_t__ writepos; int /*<<< orphan*/  dsbuffer; TYPE_3__ renderer; int /*<<< orphan*/  blocked; } ;
struct TYPE_7__ {scalar_t__ flushing; } ;
typedef  int REFERENCE_TIME ;
typedef  scalar_t__ HRESULT ;
typedef  scalar_t__ DWORD ;
typedef  TYPE_4__ DSoundRenderImpl ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 scalar_t__ DS_OK ; 
 scalar_t__ FUNC0 (TYPE_4__*,scalar_t__*,int,scalar_t__*,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ,void**,scalar_t__*,void**,scalar_t__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ S_FALSE ; 
 scalar_t__ S_OK ; 
 scalar_t__ State_Paused ; 
 scalar_t__ State_Running ; 
 scalar_t__ State_Stopped ; 
 int /*<<< orphan*/  FUNC7 (char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ VFW_E_WRONG_STATE ; 
 scalar_t__ WAIT_TIMEOUT ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static HRESULT FUNC11(DSoundRenderImpl* This, REFERENCE_TIME tStart, REFERENCE_TIME tStop, const BYTE *data, DWORD size)
{
    HRESULT hr;

    while (size && This->renderer.filter.state != State_Stopped) {
        DWORD writepos, skip = 0, free, size1, size2, ret;
        BYTE *buf1, *buf2;

        if (This->renderer.filter.state == State_Running)
            hr = FUNC0(This, &writepos, tStart, &free, &skip);
        else
            hr = S_FALSE;

        if (hr != S_OK) {
            This->in_loop = 1;
            FUNC6(&This->renderer.csRenderLock);
            ret = FUNC8(This->blocked, 10);
            FUNC2(&This->renderer.csRenderLock);
            This->in_loop = 0;
            if (This->renderer.pInputPin->flushing ||
                This->renderer.filter.state == State_Stopped) {
                return This->renderer.filter.state == State_Paused ? S_OK : VFW_E_WRONG_STATE;
            }
            if (ret != WAIT_TIMEOUT)
                FUNC1("%x\n", ret);
            continue;
        }
        tStart = -1;

        if (skip)
            FUNC3("Sample dropped %u of %u bytes\n", skip, size);
        if (skip >= size)
            return S_OK;
        data += skip;
        size -= skip;

        hr = FUNC4(This->dsbuffer, writepos, FUNC10(free, size), (void**)&buf1, &size1, (void**)&buf2, &size2, 0);
        if (hr != DS_OK) {
            FUNC1("Unable to lock sound buffer! (%x)\n", hr);
            break;
        }
        FUNC9(buf1, data, size1);
        if (size2)
            FUNC9(buf2, data+size1, size2);
        FUNC5(This->dsbuffer, buf1, size1, buf2, size2);
        This->writepos = (writepos + size1 + size2) % This->buf_size;
        FUNC7("Wrote %u bytes at %u, next at %u - (%u/%u)\n", size1+size2, writepos, This->writepos, free, size);
        data += size1 + size2;
        size -= size1 + size2;
    }
    return S_OK;
}