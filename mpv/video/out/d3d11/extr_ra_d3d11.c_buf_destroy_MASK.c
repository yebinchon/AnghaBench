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
struct ra_buf {struct d3d_buf* priv; } ;
struct ra {int dummy; } ;
struct d3d_buf {int /*<<< orphan*/  uav; int /*<<< orphan*/  buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ra_buf*) ; 

__attribute__((used)) static void FUNC2(struct ra *ra, struct ra_buf *buf)
{
    if (!buf)
        return;
    struct d3d_buf *buf_p = buf->priv;
    FUNC0(buf_p->buf);
    FUNC0(buf_p->uav);
    FUNC1(buf);
}