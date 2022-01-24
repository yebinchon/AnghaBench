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
struct stream {scalar_t__ seekable; struct priv* priv; } ;
struct priv {size_t cur; int num_streams; int /*<<< orphan*/ * streams; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,void*,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(struct stream *s, void *buffer, int len)
{
    struct priv *p = s->priv;

    while (1) {
        int res = FUNC0(p->streams[p->cur], buffer, len);
        if (res || p->cur == p->num_streams - 1)
            return res;

        p->cur += 1;
        if (s->seekable)
            FUNC1(p->streams[p->cur], 0);
    }
}