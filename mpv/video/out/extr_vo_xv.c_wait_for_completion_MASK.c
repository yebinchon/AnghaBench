#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct xvctx {int Shm_Warned_Slow; scalar_t__ Shmem_Flag; } ;
struct vo_x11_state {int ShmCompletionWaitCount; } ;
struct vo {struct vo_x11_state* x11; struct xvctx* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct vo*) ; 

__attribute__((used)) static void FUNC3(struct vo *vo, int max_outstanding)
{
    struct xvctx *ctx = vo->priv;
    struct vo_x11_state *x11 = vo->x11;
    if (ctx->Shmem_Flag) {
        while (x11->ShmCompletionWaitCount > max_outstanding) {
            if (!ctx->Shm_Warned_Slow) {
                FUNC0(vo, "X11 can't keep up! Waiting"
                        " for XShm completion events...\n");
                ctx->Shm_Warned_Slow = 1;
            }
            FUNC1(1000);
            FUNC2(vo);
        }
    }
}