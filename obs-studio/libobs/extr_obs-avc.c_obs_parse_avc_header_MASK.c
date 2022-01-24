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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint16_t ;
struct serializer {int dummy; } ;
struct TYPE_2__ {size_t num; int /*<<< orphan*/ * array; } ;
struct array_output_data {TYPE_1__ bytes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct serializer*,struct array_output_data*) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/  const*,size_t) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,size_t,int /*<<< orphan*/  const**,size_t*,int /*<<< orphan*/  const**,size_t*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (struct serializer*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct serializer*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (struct serializer*,int /*<<< orphan*/  const*,size_t) ; 

size_t FUNC7(uint8_t **header, const uint8_t *data, size_t size)
{
	struct array_output_data output;
	struct serializer s;
	const uint8_t *sps = NULL, *pps = NULL;
	size_t sps_size = 0, pps_size = 0;

	FUNC0(&s, &output);

	if (size <= 6)
		return 0;

	if (!FUNC3(data)) {
		*header = FUNC1(data, size);
		return size;
	}

	FUNC2(data, size, &sps, &sps_size, &pps, &pps_size);
	if (!sps || !pps || sps_size < 4)
		return 0;

	FUNC4(&s, 0x01);
	FUNC6(&s, sps + 1, 3);
	FUNC4(&s, 0xff);
	FUNC4(&s, 0xe1);

	FUNC5(&s, (uint16_t)sps_size);
	FUNC6(&s, sps, sps_size);
	FUNC4(&s, 0x01);
	FUNC5(&s, (uint16_t)pps_size);
	FUNC6(&s, pps, pps_size);

	*header = output.bytes.array;
	return output.bytes.num;
}