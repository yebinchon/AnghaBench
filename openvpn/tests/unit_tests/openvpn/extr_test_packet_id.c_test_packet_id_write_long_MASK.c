#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ buf_id; scalar_t__ buf_time; } ;
struct TYPE_4__ {int id; int time; } ;
struct test_packet_id_write_data {TYPE_1__ test_buf_data; TYPE_2__ pis; int /*<<< orphan*/  test_buf; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 int now ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void
FUNC4(void **state)
{
    struct test_packet_id_write_data *data = *state;

    now = 5010;
    FUNC1(FUNC3(&data->pis, &data->test_buf, true, false));
    FUNC0(data->pis.id == 1);
    FUNC0(data->pis.time == now);
    FUNC1(data->test_buf_data.buf_id == FUNC2(1));
    FUNC1(data->test_buf_data.buf_time == FUNC2(now));
}