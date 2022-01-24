#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {TYPE_1__* tls_multi; int /*<<< orphan*/  link_socket; scalar_t__ tls_exit_signal; } ;
struct context {TYPE_2__ c2; } ;
struct TYPE_3__ {scalar_t__ n_hard_errors; scalar_t__ n_soft_errors; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline void
FUNC1(struct context *c)
{
    void FUNC2(struct context *c);

    void FUNC3(struct context *c);

    if (c->c2.tls_multi && c->c2.tls_exit_signal)
    {
        if (FUNC0(c->c2.link_socket))
        {
            if (c->c2.tls_multi->n_soft_errors)
            {
                FUNC2(c);
            }
        }
        else
        {
            if (c->c2.tls_multi->n_hard_errors)
            {
                FUNC3(c);
            }
        }
    }
}