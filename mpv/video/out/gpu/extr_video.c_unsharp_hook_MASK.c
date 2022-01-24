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
struct image {int dummy; } ;
struct TYPE_2__ {int /*<<< orphan*/  unsharp; } ;
struct gl_video {TYPE_1__ opts; int /*<<< orphan*/  sc; } ;
struct gl_transform {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gl_video*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(struct gl_video *p, struct image img,
                         struct gl_transform *trans, void *priv)
{
    FUNC0(p, "unsharp masking");
    FUNC1(p->sc, p->opts.unsharp);
}