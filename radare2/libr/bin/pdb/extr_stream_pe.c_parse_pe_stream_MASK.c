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
struct TYPE_2__ {int /*<<< orphan*/  sections_hdrs; } ;
typedef  TYPE_1__ SPEStream ;
typedef  int /*<<< orphan*/  SIMAGE_SECTION_HEADER ;
typedef  int /*<<< orphan*/  R_STREAM_FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int*) ; 

void FUNC7(void *stream, R_STREAM_FILE *stream_file)
{
	int data_size = 0;
	char *data = 0, *ptmp = 0;
	int read_bytes = 0;
	SIMAGE_SECTION_HEADER *sctn_header = 0;
	SPEStream *pe_stream = (SPEStream *) stream;
	int sctn_header_size =0;

	FUNC6 (stream_file, &data_size);
	data = (char *) FUNC1 (data_size);
	if (!data) {
		return;
	}
	FUNC5 (stream_file, data);

	sctn_header_size = sizeof (SIMAGE_SECTION_HEADER);
	ptmp = data;
	pe_stream->sections_hdrs = FUNC4 ();
	while (read_bytes < data_size) {
		sctn_header = (SIMAGE_SECTION_HEADER *) FUNC1 (sctn_header_size);
		if (!sctn_header) {
			break;
		}
		FUNC2 (sctn_header, ptmp, sctn_header_size);
		ptmp += sctn_header_size;
		FUNC3 (pe_stream->sections_hdrs, sctn_header);
		read_bytes += sctn_header_size;
	}

	FUNC0 (data);
}