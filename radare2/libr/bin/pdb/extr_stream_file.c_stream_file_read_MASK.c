#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int pages_amount; int page_size; int pos; int end; } ;
typedef  TYPE_1__ R_STREAM_FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int,int,int) ; 
 scalar_t__ FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int,int,char*) ; 

void FUNC6(R_STREAM_FILE *stream_file, int size, char *res) {
	int pn_start, off_start, pn_end, off_end;
	if (size == -1) {
		char *pdata = (char *) FUNC3(stream_file->pages_amount * stream_file->page_size);
		if (pdata) {
			FUNC0(pn_start, off_start, stream_file->pos, stream_file->page_size);
			(void)off_end; // hack to remove unused warning
			FUNC5 (stream_file, 0, stream_file->pages_amount, pdata);
			stream_file->pos = stream_file->end;
			FUNC4 (res, pdata + off_start, stream_file->end - off_start);
			FUNC2 (pdata);
		}
	} else {
		FUNC0(pn_start, off_start, stream_file->pos, stream_file->page_size);
		FUNC0(pn_end, off_end, stream_file->pos + size, stream_file->page_size);
		(void)off_end; // hack to remove unused warning
		char *pdata = (char *) FUNC1(stream_file->page_size * (pn_end + 1 - pn_start), 1);
		if (pdata) {
			FUNC5(stream_file, pn_start, pn_end + 1, pdata);
			stream_file->pos += size;
			FUNC4(res, pdata + off_start, size);
			FUNC2 (pdata);
		}
	}
}