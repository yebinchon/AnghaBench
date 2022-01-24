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
typedef  int /*<<< orphan*/  uint8_t ;
struct rtmp_stream {int /*<<< orphan*/  rtmp; int /*<<< orphan*/  output; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,char*,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,size_t*,int,size_t) ; 

__attribute__((used)) static bool FUNC3(struct rtmp_stream *stream, size_t idx, bool *next)
{
	uint8_t *meta_data;
	size_t meta_data_size;
	bool success = true;

	*next = FUNC2(stream->output, &meta_data, &meta_data_size,
			      false, idx);

	if (*next) {
		success = FUNC0(&stream->rtmp, (char *)meta_data,
				     (int)meta_data_size, (int)idx) >= 0;
		FUNC1(meta_data);
	}

	return success;
}