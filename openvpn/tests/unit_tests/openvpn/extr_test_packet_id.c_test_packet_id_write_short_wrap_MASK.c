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
struct TYPE_2__ {int /*<<< orphan*/  id; } ;
struct test_packet_id_write_data {int /*<<< orphan*/  test_buf; TYPE_1__ pis; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void
FUNC2(void **state)
{
    struct test_packet_id_write_data *data = *state;

    data->pis.id = ~0;
    FUNC0(FUNC1(&data->pis, &data->test_buf, false, false));
}