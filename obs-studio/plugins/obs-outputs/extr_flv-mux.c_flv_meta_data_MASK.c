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
typedef  char uint8_t ;
typedef  int uint32_t ;
struct serializer {int dummy; } ;
struct TYPE_2__ {char* array; size_t num; } ;
struct array_output_data {TYPE_1__ bytes; } ;
typedef  int /*<<< orphan*/  obs_output_t ;

/* Variables and functions */
 int RTMP_PACKET_TYPE_INFO ; 
 int /*<<< orphan*/  FUNC0 (struct serializer*,struct array_output_data*) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char**,size_t*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct serializer*,int) ; 
 int /*<<< orphan*/  FUNC4 (struct serializer*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct serializer*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct serializer*,char*,size_t) ; 
 int FUNC7 (struct serializer*) ; 

bool FUNC8(obs_output_t *context, uint8_t **output, size_t *size,
		   bool write_header, size_t audio_idx)
{
	struct array_output_data data;
	struct serializer s;
	uint8_t *meta_data = NULL;
	size_t meta_data_size;
	uint32_t start_pos;

	FUNC0(&s, &data);

	if (!FUNC2(context, &meta_data, &meta_data_size,
				 audio_idx)) {
		FUNC1(meta_data);
		return false;
	}

	if (write_header) {
		FUNC6(&s, "FLV", 3);
		FUNC3(&s, 1);
		FUNC3(&s, 5);
		FUNC5(&s, 9);
		FUNC5(&s, 0);
	}

	start_pos = FUNC7(&s);

	FUNC3(&s, RTMP_PACKET_TYPE_INFO);

	FUNC4(&s, (uint32_t)meta_data_size);
	FUNC5(&s, 0);
	FUNC4(&s, 0);

	FUNC6(&s, meta_data, meta_data_size);

	FUNC5(&s, (uint32_t)FUNC7(&s) - start_pos - 1);

	*output = data.bytes.array;
	*size = data.bytes.num;

	FUNC1(meta_data);
	return true;
}