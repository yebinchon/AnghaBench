#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct priv {int /*<<< orphan*/  fd; } ;
struct TYPE_3__ {int /*<<< orphan*/  pos; struct priv* priv; } ;
typedef  TYPE_1__ stream_t ;
typedef  int off_t ;
typedef  int int64_t ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int64_t FUNC1(stream_t *s)
{
    struct priv *p = s->priv;
    off_t size = FUNC0(p->fd, 0, SEEK_END);
    FUNC0(p->fd, s->pos, SEEK_SET);
    return size == (off_t)-1 ? -1 : size;
}