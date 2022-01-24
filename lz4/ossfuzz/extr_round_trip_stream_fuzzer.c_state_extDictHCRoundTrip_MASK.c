#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {char* buf; int pos; int size; } ;
struct TYPE_9__ {int size; char* buf; int pos; } ;
struct TYPE_11__ {TYPE_2__ compressed; TYPE_1__ data; int /*<<< orphan*/  cstreamHC; int /*<<< orphan*/  seed; } ;
typedef  TYPE_3__ state_t ;
struct TYPE_12__ {char* buf; } ;
typedef  TYPE_4__ cursor_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const) ; 
 int FUNC3 (int /*<<< orphan*/ ,char const*,char*,int const,int const) ; 
 TYPE_4__ FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_4__) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*,char*,int const) ; 

__attribute__((used)) static void FUNC8(state_t* state)
{
    int i = 0;
    cursor_t data2 = FUNC4(state->data.size);
    FUNC0(2, "extDictHC");
    FUNC6(data2.buf, state->data.buf, state->data.size);
    while (state->data.pos != state->data.size) {
        char const* data = (i++ & 1) ? state->data.buf : data2.buf;
        char const* src = data + state->data.pos;
        char* dst = state->compressed.buf + state->compressed.pos;
        int const srcRemaining = state->data.size - state->data.pos;
        int const srcSize = FUNC2(&state->seed, 0, srcRemaining);
        int const dstCapacity = state->compressed.size - state->compressed.pos;
        int const cSize = FUNC3(state->cstreamHC, src, dst,
                                                   srcSize, dstCapacity);
        FUNC1(cSize > 0);
        FUNC0(2, "srcSize = %d", srcSize);
        state->data.pos += srcSize;
        state->compressed.pos += cSize;
        FUNC7(state, dst, cSize);
    }
    FUNC5(data2);
}