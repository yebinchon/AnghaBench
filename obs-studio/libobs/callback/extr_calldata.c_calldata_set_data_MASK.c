#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_6__ {size_t size; int /*<<< orphan*/ * stack; int /*<<< orphan*/  fixed; } ;
typedef  TYPE_1__ calldata_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ **,size_t) ; 
 scalar_t__ FUNC3 (TYPE_1__*,char const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char const*,void const*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (size_t*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 
 int FUNC8 (char const*) ; 

void FUNC9(calldata_t *data, const char *name, const void *in,
		       size_t size)
{
	uint8_t *pos = NULL;

	if (!data || !name || !*name)
		return;

	if (!data->fixed && !data->stack) {
		FUNC4(data, name, in, size);
		return;
	}

	if (FUNC3(data, name, &pos)) {
		size_t cur_size;
		FUNC5(&cur_size, pos, sizeof(size_t));

		if (cur_size < size) {
			size_t offset = size - cur_size;
			size_t bytes = data->size;

			if (!FUNC2(data, &pos, bytes + offset))
				return;
			FUNC6(pos + offset, pos, bytes - (pos - data->stack));
			data->size += offset;

		} else if (cur_size > size) {
			size_t offset = cur_size - size;
			size_t bytes = data->size - offset;

			FUNC6(pos, pos + offset, bytes - (pos - data->stack));
			data->size -= offset;
		}

		FUNC0(&pos, in, size);

	} else {
		size_t name_len = FUNC8(name) + 1;
		size_t offset = name_len + size + sizeof(size_t) * 2;
		if (!FUNC2(data, &pos, data->size + offset))
			return;
		data->size += offset;

		FUNC1(&pos, name, 0);
		FUNC0(&pos, in, size);
		FUNC7(pos, 0, sizeof(size_t));
	}
}