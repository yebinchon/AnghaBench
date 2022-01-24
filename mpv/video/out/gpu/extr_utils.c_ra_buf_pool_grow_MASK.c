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
struct TYPE_2__ {int /*<<< orphan*/  type; } ;
struct ra_buf_pool {int /*<<< orphan*/  num_buffers; TYPE_1__ current_params; int /*<<< orphan*/  index; int /*<<< orphan*/  buffers; } ;
struct ra_buf {int dummy; } ;
struct ra {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ra_buf*) ; 
 int /*<<< orphan*/  FUNC1 (struct ra*,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct ra_buf* FUNC2 (struct ra*,TYPE_1__*) ; 

__attribute__((used)) static bool FUNC3(struct ra *ra, struct ra_buf_pool *pool)
{
    struct ra_buf *buf = FUNC2(ra, &pool->current_params);
    if (!buf)
        return false;

    FUNC0(NULL, pool->buffers, pool->num_buffers, pool->index, buf);
    FUNC1(ra, "Resized buffer pool of type %u to size %d\n",
               pool->current_params.type, pool->num_buffers);
    return true;
}