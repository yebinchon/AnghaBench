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
struct mp_filter {struct fixed_aframe_size_priv* priv; } ;
struct fixed_aframe_size_priv {scalar_t__ out_written; int /*<<< orphan*/  out; int /*<<< orphan*/  in; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC1(struct mp_filter *f)
{
    struct fixed_aframe_size_priv *p = f->priv;

    FUNC0(&p->in);
    FUNC0(&p->out);
    p->out_written = 0;
}