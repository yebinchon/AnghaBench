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
struct TYPE_2__ {int /*<<< orphan*/  fpo_data_list; } ;
typedef  char SFPO_DATA_V2 ;
typedef  TYPE_1__ SFPONewStream ;
typedef  int /*<<< orphan*/  R_STREAM_FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (char*,int,int*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*) ; 

void FUNC7(void *stream, R_STREAM_FILE *stream_file)
{
	int data_size;
	char *data = 0, *ptmp = 0;
	int curr_read_bytes = 0, read_bytes = 0;
	SFPO_DATA_V2 *fpo_data = 0;
	SFPONewStream *fpo_stream = 0;

	FUNC6 (stream_file, &data_size);
	data = (char *) FUNC1 (data_size);
	if (!data) {
		return;
	}
	FUNC5 (stream_file, data);

	fpo_stream = (SFPONewStream *) stream;
	fpo_stream->fpo_data_list = FUNC4 ();
	ptmp = data;
	while (read_bytes < data_size) {
		fpo_data = (SFPO_DATA_V2 *) FUNC1 (sizeof(SFPO_DATA_V2));
		if (!fpo_data) {
			FUNC0 (data);
			return;
		}
		curr_read_bytes = FUNC2 (ptmp, data_size, &read_bytes, fpo_data);
		ptmp += curr_read_bytes;

		if (!curr_read_bytes) {
			FUNC0 (fpo_data);
			break;
		}

		FUNC3 (fpo_stream->fpo_data_list, fpo_data);
	}

	FUNC0 (data);
}