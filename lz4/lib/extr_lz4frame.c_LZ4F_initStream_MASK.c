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
struct TYPE_3__ {int /*<<< orphan*/ * HCCtx; int /*<<< orphan*/ * fastCtx; } ;
typedef  int /*<<< orphan*/  LZ4_stream_t ;
typedef  int /*<<< orphan*/  LZ4_streamHC_t ;
typedef  scalar_t__ LZ4F_blockMode_t ;
typedef  TYPE_1__ LZ4F_CDict ;

/* Variables and functions */
 scalar_t__ LZ4F_blockLinked ; 
 int LZ4HC_CLEVEL_MIN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(void* ctx,
                            const LZ4F_CDict* cdict,
                            int level,
                            LZ4F_blockMode_t blockMode) {
    if (level < LZ4HC_CLEVEL_MIN) {
        if (cdict != NULL || blockMode == LZ4F_blockLinked) {
            /* In these cases, we will call LZ4_compress_fast_continue(),
             * which needs an already reset context. Otherwise, we'll call a
             * one-shot API. The non-continued APIs internally perform their own
             * resets at the beginning of their calls, where they know what
             * tableType they need the context to be in. So in that case this
             * would be misguided / wasted work. */
            FUNC3((LZ4_stream_t*)ctx);
        }
        FUNC1((LZ4_stream_t *)ctx, cdict ? cdict->fastCtx : NULL);
    } else {
        FUNC2((LZ4_streamHC_t*)ctx, level);
        FUNC0((LZ4_streamHC_t *)ctx, cdict ? cdict->HCCtx : NULL);
    }
}