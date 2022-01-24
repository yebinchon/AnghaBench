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
struct TYPE_11__ {TYPE_2__ compressed; TYPE_1__ data; int /*<<< orphan*/  cstream; int /*<<< orphan*/  seed; } ;
typedef  TYPE_3__ state_t ;
struct TYPE_12__ {char* buf; } ;
typedef  TYPE_4__ cursor_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,char*,int const,int const,int /*<<< orphan*/ ) ; 
 TYPE_4__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,char*,int const) ; 

__attribute__((used)) static void FUNC7(state_t* state)
{
    int i = 0;
    cursor_t data2 = FUNC3(state->data.size);
    FUNC5(data2.buf, state->data.buf, state->data.size);
    while (state->data.pos != state->data.size) {
        char const* data = (i++ & 1) ? state->data.buf : data2.buf;
        char const* src = data + state->data.pos;
        char* dst = state->compressed.buf + state->compressed.pos;
        int const srcRemaining = state->data.size - state->data.pos;
        int const srcSize = FUNC1(&state->seed, 0, srcRemaining);
        int const dstCapacity = state->compressed.size - state->compressed.pos;
        int const cSize = FUNC2(state->cstream, src, dst,
                                                     srcSize, dstCapacity, 0);
        FUNC0(cSize > 0);
        state->data.pos += srcSize;
        state->compressed.pos += cSize;
        FUNC6(state, dst, cSize);
    }
    FUNC4(data2);
}