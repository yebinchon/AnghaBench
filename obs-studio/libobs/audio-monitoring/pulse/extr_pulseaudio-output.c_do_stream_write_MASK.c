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
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_4__ {size_t size; } ;
struct TYPE_3__ {size_t buffer_size; size_t bytesRemaining; int /*<<< orphan*/  stream; TYPE_2__ new_data; } ;

/* Variables and functions */
 int /*<<< orphan*/  PA_SEEK_RELATIVE ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,size_t) ; 
 TYPE_1__* data ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,void**,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ *,long long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 

__attribute__((used)) static void FUNC6(void *param)
{
	FUNC0(param);
	uint8_t *buffer = NULL;

	while (data->new_data.size >= data->buffer_size &&
	       data->bytesRemaining > 0) {
		size_t bytesToFill = data->buffer_size;

		if (bytesToFill > data->bytesRemaining)
			bytesToFill = data->bytesRemaining;

		FUNC2(data->stream, (void **)&buffer,
				      &bytesToFill);

		FUNC1(&data->new_data, buffer, bytesToFill);

		FUNC4();
		FUNC3(data->stream, buffer, bytesToFill, NULL, 0LL,
				PA_SEEK_RELATIVE);
		FUNC5();

		data->bytesRemaining -= bytesToFill;
	}
}