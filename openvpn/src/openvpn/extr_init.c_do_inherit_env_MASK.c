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
struct env_set {int dummy; } ;
struct TYPE_2__ {int es_owned; int /*<<< orphan*/  es; } ;
struct context {TYPE_1__ c2; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,struct env_set const*) ; 

__attribute__((used)) static void
FUNC2(struct context *c, const struct env_set *src)
{
    c->c2.es = FUNC0(NULL);
    c->c2.es_owned = true;
    FUNC1(c->c2.es, src);
}