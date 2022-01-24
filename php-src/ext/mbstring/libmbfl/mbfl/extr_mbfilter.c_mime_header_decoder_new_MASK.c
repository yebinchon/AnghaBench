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
struct mime_header_decoder_data {int /*<<< orphan*/ * deco_filter; int /*<<< orphan*/ * conv2_filter; int /*<<< orphan*/ * conv1_filter; int /*<<< orphan*/  const* encoding; int /*<<< orphan*/  const* incode; int /*<<< orphan*/  outdev; int /*<<< orphan*/  const* outcode; scalar_t__ status; scalar_t__ cspos; int /*<<< orphan*/  tmpdev; } ;
typedef  int /*<<< orphan*/  mbfl_encoding ;

/* Variables and functions */
 void* FUNC0 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  const mbfl_encoding_8bit ; 
 int /*<<< orphan*/  const mbfl_encoding_ascii ; 
 int /*<<< orphan*/  const mbfl_encoding_wchar ; 
 int /*<<< orphan*/  mbfl_filter_output_pipe ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mbfl_memory_device_output ; 
 int /*<<< orphan*/  FUNC3 (struct mime_header_decoder_data*) ; 

struct mime_header_decoder_data*
FUNC4(const mbfl_encoding *outcode)
{
	struct mime_header_decoder_data *pd;

	pd = (struct mime_header_decoder_data*)FUNC1(sizeof(struct mime_header_decoder_data));
	if (pd == NULL) {
		return NULL;
	}

	FUNC2(&pd->outdev, 0, 0);
	FUNC2(&pd->tmpdev, 0, 0);
	pd->cspos = 0;
	pd->status = 0;
	pd->encoding = &mbfl_encoding_8bit;
	pd->incode = &mbfl_encoding_ascii;
	pd->outcode = outcode;
	/* charset convert filter */
	pd->conv2_filter = FUNC0(&mbfl_encoding_wchar, pd->outcode, mbfl_memory_device_output, 0, &pd->outdev);
	pd->conv1_filter = FUNC0(pd->incode, &mbfl_encoding_wchar, mbfl_filter_output_pipe, 0, pd->conv2_filter);
	/* decode filter */
	pd->deco_filter = FUNC0(pd->encoding, &mbfl_encoding_8bit, mbfl_filter_output_pipe, 0, pd->conv1_filter);

	if (pd->conv1_filter == NULL || pd->conv2_filter == NULL || pd->deco_filter == NULL) {
		FUNC3(pd);
		return NULL;
	}

	return pd;
}