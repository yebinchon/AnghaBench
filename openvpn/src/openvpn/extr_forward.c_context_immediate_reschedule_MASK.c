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
struct TYPE_3__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct TYPE_4__ {TYPE_1__ timeval; } ;
struct context {TYPE_2__ c2; } ;

/* Variables and functions */

__attribute__((used)) static inline void
FUNC0(struct context *c)
{
    c->c2.timeval.tv_sec = 0;  /* ZERO-TIMEOUT */
    c->c2.timeval.tv_usec = 0;
}