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
struct priv {int num_buffers; } ;
struct ao {struct priv* priv; } ;
typedef  int ALint ;

/* Variables and functions */
 int /*<<< orphan*/  AL_BUFFERS_PROCESSED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * buffers ; 
 int /*<<< orphan*/  source ; 
 size_t unqueue_buf ; 

__attribute__((used)) static void FUNC2(struct ao *ao)
{
    struct priv *q = ao->priv;
    ALint p;
    int till_wrap = q->num_buffers - unqueue_buf;
    FUNC0(source, AL_BUFFERS_PROCESSED, &p);
    if (p >= till_wrap) {
        FUNC1(source, till_wrap, &buffers[unqueue_buf]);
        unqueue_buf = 0;
        p -= till_wrap;
    }
    if (p) {
        FUNC1(source, p, &buffers[unqueue_buf]);
        unqueue_buf += p;
    }
}