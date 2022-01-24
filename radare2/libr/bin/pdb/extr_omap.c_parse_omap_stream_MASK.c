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
struct TYPE_2__ {int /*<<< orphan*/  omap_entries; scalar_t__ froms; } ;
typedef  TYPE_1__ SOmapStream ;
typedef  char SOmapEntry ;
typedef  int /*<<< orphan*/  R_STREAM_FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int FUNC2 (char*,int,int*,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*) ; 

void FUNC7(void *stream, R_STREAM_FILE *stream_file) {
	int data_size;
	char *data = NULL, *ptmp = NULL;
	int curr_read_bytes = 0, read_bytes = 0;
	SOmapEntry *omap_entry = 0;
	SOmapStream *omap_stream = 0;

	FUNC6 (stream_file, &data_size);
	data = (char *) FUNC1 (data_size);
	if (!data) {
		return;
	}
	FUNC5 (stream_file, data);

	omap_stream = (SOmapStream *) stream;
	omap_stream->froms = 0;
	omap_stream->omap_entries = FUNC4 ();
	ptmp = data;
	while (read_bytes < data_size) {
		omap_entry = (SOmapEntry *) FUNC1 (sizeof(SOmapEntry));
		if (!omap_entry) {
			break;
		}
		curr_read_bytes = FUNC2 (ptmp, data_size, &read_bytes, omap_entry);
		if (!curr_read_bytes) {
			FUNC0 (omap_entry);
			break;
		}
		ptmp += curr_read_bytes;
		FUNC3 (omap_stream->omap_entries, omap_entry);
	}

	FUNC0 (data);
}