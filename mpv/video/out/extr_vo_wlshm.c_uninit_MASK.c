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
struct vo {struct priv* priv; } ;
struct priv {struct buffer* free_buffers; } ;
struct buffer {struct buffer* next; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct vo*) ; 

__attribute__((used)) static void FUNC2(struct vo *vo)
{
    struct priv *p = vo->priv;
    struct buffer *buf;

    while (p->free_buffers) {
        buf = p->free_buffers;
        p->free_buffers = buf->next;
        FUNC0(buf);
    }
    FUNC1(vo);
}