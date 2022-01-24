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
struct priv {int /*<<< orphan*/ * buf; int /*<<< orphan*/  buffer_lock; int /*<<< orphan*/ * play; int /*<<< orphan*/ * engine; int /*<<< orphan*/ * buffer_queue; } ;
struct ao {struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  output_mix ; 
 int /*<<< orphan*/  player ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  sl ; 

__attribute__((used)) static void FUNC3(struct ao *ao)
{
    struct priv *p = ao->priv;

    FUNC0(player);
    FUNC0(output_mix);
    FUNC0(sl);

    p->buffer_queue = NULL;
    p->engine = NULL;
    p->play = NULL;

    FUNC2(&p->buffer_lock);

    FUNC1(p->buf);
    p->buf = NULL;
}