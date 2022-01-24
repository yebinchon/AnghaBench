#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uptrval ;
typedef  int /*<<< orphan*/  tableType_t ;
struct TYPE_2__ {int /*<<< orphan*/  internal_donotuse; } ;
typedef  int /*<<< orphan*/  LZ4_stream_t_internal ;
typedef  int /*<<< orphan*/  LZ4_stream_t ;

/* Variables and functions */
 int ACCELERATION_DEFAULT ; 
 int LZ4_64Klimit ; 
 scalar_t__ LZ4_DISTANCE_MAX ; 
 int FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ * const,char const*,char*,int,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/  const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 TYPE_1__* FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  byPtr ; 
 int /*<<< orphan*/  const byU16 ; 
 int /*<<< orphan*/  byU32 ; 
 int /*<<< orphan*/  limitedOutput ; 
 int /*<<< orphan*/  noDict ; 
 int /*<<< orphan*/  noDictIssue ; 
 int /*<<< orphan*/  notLimited ; 

int FUNC4(void* state, const char* source, char* dest, int inputSize, int maxOutputSize, int acceleration)
{
    LZ4_stream_t_internal* const ctx = & FUNC2(state, sizeof(LZ4_stream_t)) -> internal_donotuse;
    FUNC3(ctx != NULL);
    if (acceleration < 1) acceleration = ACCELERATION_DEFAULT;
    if (maxOutputSize >= FUNC0(inputSize)) {
        if (inputSize < LZ4_64Klimit) {
            return FUNC1(ctx, source, dest, inputSize, NULL, 0, notLimited, byU16, noDict, noDictIssue, acceleration);
        } else {
            const tableType_t tableType = ((sizeof(void*)==4) && ((uptrval)source > LZ4_DISTANCE_MAX)) ? byPtr : byU32;
            return FUNC1(ctx, source, dest, inputSize, NULL, 0, notLimited, tableType, noDict, noDictIssue, acceleration);
        }
    } else {
        if (inputSize < LZ4_64Klimit) {
            return FUNC1(ctx, source, dest, inputSize, NULL, maxOutputSize, limitedOutput, byU16, noDict, noDictIssue, acceleration);
        } else {
            const tableType_t tableType = ((sizeof(void*)==4) && ((uptrval)source > LZ4_DISTANCE_MAX)) ? byPtr : byU32;
            return FUNC1(ctx, source, dest, inputSize, NULL, maxOutputSize, limitedOutput, tableType, noDict, noDictIssue, acceleration);
        }
    }
}