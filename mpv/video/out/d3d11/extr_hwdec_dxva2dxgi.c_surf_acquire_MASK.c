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
struct ra_hwdec_mapper {struct priv* priv; } ;
struct queue_surf {int dummy; } ;
struct priv {int queue_len; size_t queue_pos; struct queue_surf** queue; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ra_hwdec_mapper*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct priv*,struct queue_surf**,int,size_t,struct queue_surf*) ; 
 int /*<<< orphan*/  FUNC2 (struct ra_hwdec_mapper*,char*) ; 
 struct queue_surf* FUNC3 (struct ra_hwdec_mapper*) ; 
 int /*<<< orphan*/  FUNC4 (struct ra_hwdec_mapper*,struct queue_surf*) ; 
 int /*<<< orphan*/  FUNC5 (struct ra_hwdec_mapper*,struct queue_surf*) ; 

__attribute__((used)) static struct queue_surf *FUNC6(struct ra_hwdec_mapper *mapper)
{
    struct priv *p = mapper->priv;

    if (!p->queue_len || !FUNC4(mapper, p->queue[p->queue_pos])) {
        if (p->queue_len < 16) {
            struct queue_surf *surf = FUNC3(mapper);
            if (!surf)
                return NULL;

            // The next surface is busy, so grow the queue
            FUNC1(p, p->queue, p->queue_len, p->queue_pos, surf);
            FUNC0(mapper, "Queue grew to %d surfaces\n", p->queue_len);
        } else {
            // For sanity, don't let the queue grow beyond 16 surfaces. It
            // should never get this big. If it does, wait for the surface to
            // become idle rather than polling it.
            if (!FUNC5(mapper, p->queue[p->queue_pos]))
                return NULL;
            FUNC2(mapper, "Queue underflow!\n");
        }
    }
    return p->queue[p->queue_pos];
}