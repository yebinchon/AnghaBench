#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
struct TYPE_3__ {int end; int* pages; int page_size; int /*<<< orphan*/  buf; int /*<<< orphan*/  pages_amount; int /*<<< orphan*/  error; } ;
typedef  TYPE_1__ R_STREAM_FILE ;

/* Variables and functions */
 int /*<<< orphan*/  READ_PAGE_FAIL ; 
 int /*<<< orphan*/  R_BUF_SET ; 
 int FUNC0 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(R_STREAM_FILE *stream_file, int start_indx, int end_indx, char *res) {
	int i, page_offset;

	if ((end_indx - start_indx) > stream_file->end) {
		stream_file->error = READ_PAGE_FAIL;
		return;
	}
	end_indx = FUNC0 (end_indx, stream_file->pages_amount);

	for (i = start_indx; i < end_indx; i++) {
		page_offset = stream_file->pages[i] * stream_file->page_size;
		if (page_offset < 1) {
			return;
		}
		FUNC2 (stream_file->buf, page_offset, R_BUF_SET);
		FUNC1 (stream_file->buf, page_offset,
			(ut8 *)res, stream_file->page_size);
		res += stream_file->page_size;
	}
}