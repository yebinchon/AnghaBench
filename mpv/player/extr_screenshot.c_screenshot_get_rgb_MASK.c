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
struct mp_image {int dummy; } ;
struct MPContext {int /*<<< orphan*/  log; int /*<<< orphan*/  global; } ;

/* Variables and functions */
 int /*<<< orphan*/  IMGFMT_BGR0 ; 
 struct mp_image* FUNC0 (struct mp_image*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct mp_image* FUNC1 (struct MPContext*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_image*) ; 

__attribute__((used)) static struct mp_image *FUNC3(struct MPContext *mpctx, int mode)
{
    struct mp_image *mpi = FUNC1(mpctx, mode, false);
    if (!mpi)
        return NULL;
    struct mp_image *res = FUNC0(mpi, IMGFMT_BGR0, mpctx->global,
                                         mpctx->log);
    FUNC2(mpi);
    return res;
}