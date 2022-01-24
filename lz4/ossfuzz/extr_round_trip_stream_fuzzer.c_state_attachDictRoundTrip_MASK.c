#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {char* buf; } ;
struct TYPE_7__ {int /*<<< orphan*/  dstream; int /*<<< orphan*/  cstream; TYPE_1__ data; } ;
typedef  TYPE_2__ state_t ;
typedef  int /*<<< orphan*/  LZ4_stream_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,size_t const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char const*,size_t const) ; 
 int /*<<< orphan*/  state_extDictRoundTrip ; 
 int /*<<< orphan*/  state_prefixRoundTrip ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 size_t FUNC6 (TYPE_2__*) ; 

__attribute__((used)) static void FUNC7(state_t* state)
{
    char const* dict = state->data.buf;
    size_t const dictSize = FUNC6(state);
    LZ4_stream_t* dictStream = FUNC1();
    FUNC3(dictStream, dict, dictSize);
    FUNC0(state->cstream, dictStream);
    FUNC4(state->dstream, dict, dictSize);
    FUNC5(state, state_prefixRoundTrip, state_extDictRoundTrip);
    FUNC2(dictStream);
}