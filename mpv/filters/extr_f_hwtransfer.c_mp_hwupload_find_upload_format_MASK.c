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
struct priv {int last_upload_fmt; } ;
struct mp_hwupload {TYPE_1__* f; } ;
struct TYPE_2__ {struct priv* priv; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct priv*,int) ; 

int FUNC1(struct mp_hwupload *u, int imgfmt)
{
    struct priv *p = u->f->priv;

    if (!FUNC0(p, imgfmt))
        return 0;
    return p->last_upload_fmt;
}