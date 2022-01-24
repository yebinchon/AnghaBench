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
struct TYPE_3__ {int /*<<< orphan*/  internal_donotuse; } ;
typedef  TYPE_1__ LZ4_stream_t ;

/* Variables and functions */
 int LZ4_64Klimit ; 
 int FUNC0 (int /*<<< orphan*/ *,char const*,char*,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  byPtr ; 
 int /*<<< orphan*/  byut16 ; 
 int /*<<< orphan*/  byut32 ; 
 int /*<<< orphan*/  limitedOutput ; 
 int /*<<< orphan*/  noDict ; 
 int /*<<< orphan*/  noDictIssue ; 

int FUNC2(const char* source, char* dest, int inputSize, int maxOutputSize, int acceleration) {
	LZ4_stream_t ctx;
	FUNC1(&ctx);

	if (inputSize < LZ4_64Klimit) {
		return FUNC0(&ctx.internal_donotuse, source, dest, inputSize, maxOutputSize, limitedOutput, byut16,                        noDict, noDictIssue, acceleration);
	}
	return FUNC0(&ctx.internal_donotuse, source, dest, inputSize, maxOutputSize, limitedOutput, sizeof(void*)==8 ? byut32 : byPtr, noDict, noDictIssue, acceleration);
}