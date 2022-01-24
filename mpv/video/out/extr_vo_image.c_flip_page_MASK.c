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
struct vo {int /*<<< orphan*/  log; int /*<<< orphan*/  global; struct priv* priv; } ;
struct priv {int /*<<< orphan*/  current; TYPE_1__* opts; int /*<<< orphan*/  frame; } ;
struct TYPE_2__ {int /*<<< orphan*/  opts; scalar_t__ outdir; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct vo*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 char* FUNC3 (void*,scalar_t__,char*) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 char* FUNC5 (void*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 void* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC9(struct vo *vo)
{
    struct priv *p = vo->priv;
    if (!p->current)
        return;

    (p->frame)++;

    void *t = FUNC7(NULL);
    char *filename = FUNC5(t, "%08d.%s", p->frame,
                                     FUNC1(p->opts->opts));

    if (p->opts->outdir && FUNC4(p->opts->outdir))
        filename = FUNC3(t, p->opts->outdir, filename);

    FUNC0(vo, "Saving %s\n", filename);
    FUNC8(p->current, p->opts->opts, filename, vo->global, vo->log);

    FUNC6(t);
    FUNC2(&p->current);
}