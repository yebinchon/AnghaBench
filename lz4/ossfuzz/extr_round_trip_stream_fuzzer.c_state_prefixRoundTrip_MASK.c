#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* buf; int pos; int size; } ;
struct TYPE_6__ {scalar_t__ pos; scalar_t__ size; char* buf; } ;
struct TYPE_8__ {TYPE_2__ compressed; TYPE_1__ data; int /*<<< orphan*/  cstream; int /*<<< orphan*/  seed; } ;
typedef  TYPE_3__ state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int const) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,char*,int const,int const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*,char*,int const) ; 

__attribute__((used)) static void FUNC4(state_t* state)
{
    while (state->data.pos != state->data.size) {
        char const* src = state->data.buf + state->data.pos;
        char* dst = state->compressed.buf + state->compressed.pos;
        int const srcRemaining = state->data.size - state->data.pos;
        int const srcSize = FUNC1(&state->seed, 0, srcRemaining);
        int const dstCapacity = state->compressed.size - state->compressed.pos;
        int const cSize = FUNC2(state->cstream, src, dst,
                                                     srcSize, dstCapacity, 0);
        FUNC0(cSize > 0);
        state->data.pos += srcSize;
        state->compressed.pos += cSize;
        FUNC3(state, dst, cSize);
    }
}