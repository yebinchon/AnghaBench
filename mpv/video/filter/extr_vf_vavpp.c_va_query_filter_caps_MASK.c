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
struct priv {int /*<<< orphan*/  context; int /*<<< orphan*/  display; } ;
struct mp_filter {struct priv* priv; } ;
typedef  int /*<<< orphan*/  VAStatus ;
typedef  int /*<<< orphan*/  VAProcFilterType ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct mp_filter*,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,unsigned int*) ; 

__attribute__((used)) static int FUNC2(struct mp_filter *vf, VAProcFilterType type,
                                void *caps, unsigned int count)
{
    struct priv *p = vf->priv;
    VAStatus status = FUNC1(p->display, p->context, type,
                                                 caps, &count);
    return FUNC0(vf, "vaQueryVideoProcFilterCaps()") ? count : 0;
}