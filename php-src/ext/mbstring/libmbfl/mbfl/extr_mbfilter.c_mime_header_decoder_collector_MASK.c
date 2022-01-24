#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_9__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {size_t pos; int /*<<< orphan*/ * buffer; } ;
struct mime_header_decoder_data {int status; size_t cspos; TYPE_1__* conv1_filter; TYPE_9__ tmpdev; TYPE_1__* deco_filter; int /*<<< orphan*/  const* encoding; int /*<<< orphan*/  const* incode; } ;
typedef  int /*<<< orphan*/  mbfl_encoding ;
struct TYPE_15__ {int /*<<< orphan*/  (* filter_function ) (int,TYPE_1__*) ;int /*<<< orphan*/  (* filter_flush ) (TYPE_1__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/  const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  mbfl_encoding_8bit ; 
 int /*<<< orphan*/  const mbfl_encoding_ascii ; 
 int /*<<< orphan*/  const mbfl_encoding_base64 ; 
 int /*<<< orphan*/  const mbfl_encoding_qprint ; 
 int /*<<< orphan*/  mbfl_encoding_wchar ; 
 int /*<<< orphan*/  FUNC2 (int,TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_9__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_9__*) ; 
 int /*<<< orphan*/ * FUNC5 (char const*) ; 
 int /*<<< orphan*/  FUNC6 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC7 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC11 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (int,TYPE_1__*) ; 

__attribute__((used)) static int
FUNC14(int c, void* data)
{
	const mbfl_encoding *encoding;
	struct mime_header_decoder_data *pd = (struct mime_header_decoder_data*)data;

	switch (pd->status) {
	case 1:
		if (c == 0x3f) {		/* ? */
			FUNC2(c, &pd->tmpdev);
			pd->cspos = pd->tmpdev.pos;
			pd->status = 2;
		} else {
			FUNC0(pd->conv1_filter, &pd->tmpdev);
			FUNC3(&pd->tmpdev);
			if (c == 0x3d) {		/* = */
				FUNC2(c, &pd->tmpdev);
			} else if (c == 0x0d || c == 0x0a) {	/* CR or LF */
				pd->status = 9;
			} else {
				(*pd->conv1_filter->filter_function)(c, pd->conv1_filter);
				pd->status = 0;
			}
		}
		break;
	case 2:		/* store charset string */
		if (c == 0x3f) {		/* ? */
			/* identify charset */
			FUNC2('\0', &pd->tmpdev);
			encoding = FUNC5((const char *)&pd->tmpdev.buffer[pd->cspos]);
			if (encoding != NULL) {
				pd->incode = encoding;
				pd->status = 3;
			}
			FUNC4(&pd->tmpdev);
			FUNC2(c, &pd->tmpdev);
		} else {
			FUNC2(c, &pd->tmpdev);
			if (pd->tmpdev.pos > 100) {		/* too long charset string */
				pd->status = 0;
			} else if (c == 0x0d || c == 0x0a) {	/* CR or LF */
				FUNC4(&pd->tmpdev);
				pd->status = 9;
			}
			if (pd->status != 2) {
				FUNC0(pd->conv1_filter, &pd->tmpdev);
				FUNC3(&pd->tmpdev);
			}
		}
		break;
	case 3:		/* identify encoding */
		FUNC2(c, &pd->tmpdev);
		if (c == 0x42 || c == 0x62) {		/* 'B' or 'b' */
			pd->encoding = &mbfl_encoding_base64;
			pd->status = 4;
		} else if (c == 0x51 || c == 0x71) {	/* 'Q' or 'q' */
			pd->encoding = &mbfl_encoding_qprint;
			pd->status = 4;
		} else {
			if (c == 0x0d || c == 0x0a) {	/* CR or LF */
				FUNC4(&pd->tmpdev);
				pd->status = 9;
			} else {
				pd->status = 0;
			}
			FUNC0(pd->conv1_filter, &pd->tmpdev);
			FUNC3(&pd->tmpdev);
		}
		break;
	case 4:		/* reset filter */
		FUNC2(c, &pd->tmpdev);
		if (c == 0x3f) {		/* ? */
			/* charset convert filter */
			FUNC1(pd->conv1_filter, pd->incode, &mbfl_encoding_wchar);
			/* decode filter */
			FUNC1(pd->deco_filter, pd->encoding, &mbfl_encoding_8bit);
			pd->status = 5;
		} else {
			if (c == 0x0d || c == 0x0a) {	/* CR or LF */
				FUNC4(&pd->tmpdev);
				pd->status = 9;
			} else {
				pd->status = 0;
			}
			FUNC0(pd->conv1_filter, &pd->tmpdev);
		}
		FUNC3(&pd->tmpdev);
		break;
	case 5:		/* encoded block */
		if (c == 0x3f) {		/* ? */
			pd->status = 6;
		} else {
			(*pd->deco_filter->filter_function)(c, pd->deco_filter);
		}
		break;
	case 6:		/* check end position */
		if (c == 0x3d) {		/* = */
			/* flush and reset filter */
			(*pd->deco_filter->filter_flush)(pd->deco_filter);
			(*pd->conv1_filter->filter_flush)(pd->conv1_filter);
			FUNC1(pd->conv1_filter, &mbfl_encoding_ascii, &mbfl_encoding_wchar);
			pd->status = 7;
		} else {
			(*pd->deco_filter->filter_function)(0x3f, pd->deco_filter);
			if (c != 0x3f) {		/* ? */
				(*pd->deco_filter->filter_function)(c, pd->deco_filter);
				pd->status = 5;
			}
		}
		break;
	case 7:		/* after encoded block */
		if (c == 0x0d || c == 0x0a) {	/* CR LF */
			pd->status = 8;
		} else {
			FUNC2(c, &pd->tmpdev);
			if (c == 0x3d) {		/* = */
				pd->status = 1;
			} else if (c != 0x20 && c != 0x09) {		/* not space */
				FUNC0(pd->conv1_filter, &pd->tmpdev);
				FUNC3(&pd->tmpdev);
				pd->status = 0;
			}
		}
		break;
	case 8:		/* folding */
	case 9:		/* folding */
		if (c != 0x0d && c != 0x0a && c != 0x20 && c != 0x09) {
			if (c == 0x3d) {		/* = */
				if (pd->status == 8) {
					FUNC2(0x20, &pd->tmpdev);	/* SPACE */
				} else {
					(*pd->conv1_filter->filter_function)(0x20, pd->conv1_filter);
				}
				FUNC2(c, &pd->tmpdev);
				pd->status = 1;
			} else {
				FUNC2(0x20, &pd->tmpdev);
				FUNC2(c, &pd->tmpdev);
				FUNC0(pd->conv1_filter, &pd->tmpdev);
				FUNC3(&pd->tmpdev);
				pd->status = 0;
			}
		}
		break;
	default:		/* non encoded block */
		if (c == 0x0d || c == 0x0a) {	/* CR LF */
			pd->status = 9;
		} else if (c == 0x3d) {		/* = */
			FUNC2(c, &pd->tmpdev);
			pd->status = 1;
		} else {
			(*pd->conv1_filter->filter_function)(c, pd->conv1_filter);
		}
		break;
	}

	return c;
}