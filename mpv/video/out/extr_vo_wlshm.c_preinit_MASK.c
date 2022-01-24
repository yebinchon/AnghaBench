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
struct vo {int /*<<< orphan*/  global; int /*<<< orphan*/  log; struct priv* priv; } ;
struct priv {TYPE_1__* sws; } ;
struct TYPE_3__ {int /*<<< orphan*/  log; } ;

/* Variables and functions */
 TYPE_1__* FUNC0 (struct vo*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct vo*) ; 

__attribute__((used)) static int FUNC3(struct vo *vo)
{
    struct priv *p = vo->priv;

    if (!FUNC2(vo))
        return -1;
    p->sws = FUNC0(vo);
    p->sws->log = vo->log;
    FUNC1(p->sws, vo->global);

    return 0;
}