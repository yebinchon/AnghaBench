#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uptrval ;
typedef  int /*<<< orphan*/  tableType_t ;
struct TYPE_5__ {int /*<<< orphan*/  internal_donotuse; } ;
typedef  TYPE_1__ LZ4_stream_t ;

/* Variables and functions */
 int LZ4_64Klimit ; 
 scalar_t__ LZ4_DISTANCE_MAX ; 
 int FUNC0 (int) ; 
 int FUNC1 (TYPE_1__*,char const*,char*,int,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,char const*,char*,int,int*,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 void* FUNC3 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  byPtr ; 
 int /*<<< orphan*/  const byU16 ; 
 int /*<<< orphan*/  byU32 ; 
 int /*<<< orphan*/  fillOutput ; 
 int /*<<< orphan*/  noDict ; 
 int /*<<< orphan*/  noDictIssue ; 

__attribute__((used)) static int FUNC5 (LZ4_stream_t* state, const char* src, char* dst, int* srcSizePtr, int targetDstSize)
{
    void* const s = FUNC3(state, sizeof (*state));
    FUNC4(s != NULL); (void)s;

    if (targetDstSize >= FUNC0(*srcSizePtr)) {  /* compression success is guaranteed */
        return FUNC1(state, src, dst, *srcSizePtr, targetDstSize, 1);
    } else {
        if (*srcSizePtr < LZ4_64Klimit) {
            return FUNC2(&state->internal_donotuse, src, dst, *srcSizePtr, srcSizePtr, targetDstSize, fillOutput, byU16, noDict, noDictIssue, 1);
        } else {
            tableType_t const addrMode = ((sizeof(void*)==4) && ((uptrval)src > LZ4_DISTANCE_MAX)) ? byPtr : byU32;
            return FUNC2(&state->internal_donotuse, src, dst, *srcSizePtr, srcSizePtr, targetDstSize, fillOutput, addrMode, noDict, noDictIssue, 1);
    }   }
}