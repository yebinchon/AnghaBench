#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  internal_donotuse; } ;
typedef  TYPE_1__ LZ4_streamHC_t ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,char const*,char*,int*,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__* const,int) ; 
 int /*<<< orphan*/  fillOutput ; 

int FUNC4(void* state, const char* source, char* dest, int* sourceSizePtr, int targetDestSize, int cLevel)
{
    LZ4_streamHC_t* const ctx = FUNC2(state, sizeof(*ctx));
    if (ctx==NULL) return 0;   /* init failure */
    FUNC1(&ctx->internal_donotuse, (const BYTE*) source);
    FUNC3(ctx, cLevel);
    return FUNC0(&ctx->internal_donotuse, source, dest, sourceSizePtr, targetDestSize, cLevel, fillOutput);
}