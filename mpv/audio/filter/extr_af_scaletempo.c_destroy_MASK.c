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
struct priv {int /*<<< orphan*/  in; int /*<<< orphan*/  table_window; int /*<<< orphan*/  table_blend; int /*<<< orphan*/  buf_pre_corr; int /*<<< orphan*/  buf_overlap; int /*<<< orphan*/  buf_queue; } ;
struct mp_filter {struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_filter*) ; 

__attribute__((used)) static void FUNC3(struct mp_filter *f)
{
    struct priv *s = f->priv;
    FUNC1(s->buf_queue);
    FUNC1(s->buf_overlap);
    FUNC1(s->buf_pre_corr);
    FUNC1(s->table_blend);
    FUNC1(s->table_window);
    FUNC0(&s->in);
    FUNC2(f);
}