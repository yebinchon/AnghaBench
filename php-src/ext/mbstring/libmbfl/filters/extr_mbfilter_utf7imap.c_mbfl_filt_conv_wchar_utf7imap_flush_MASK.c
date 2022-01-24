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
struct TYPE_3__ {int status; int cache; int /*<<< orphan*/  data; int /*<<< orphan*/  (* output_function ) (int,int /*<<< orphan*/ ) ;} ;
typedef  TYPE_1__ mbfl_convert_filter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int* mbfl_utf7imap_base64_table ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int,int /*<<< orphan*/ ) ; 

int FUNC14(mbfl_convert_filter *filter)
{
	int status, cache;

	status = filter->status;
	cache = filter->cache;
	filter->status = 0;
	filter->cache = 0;
	/* flush fragments */
	switch (status) {
	case 1:
		FUNC0((*filter->output_function)(mbfl_utf7imap_base64_table[(cache >> 10) & 0x3f], filter->data));
		FUNC0((*filter->output_function)(mbfl_utf7imap_base64_table[(cache >> 4) & 0x3f], filter->data));
		FUNC0((*filter->output_function)(mbfl_utf7imap_base64_table[(cache << 2) & 0x3c], filter->data));
		FUNC0((*filter->output_function)(0x2d, filter->data));		/* '-' */
		break;

	case 2:
		FUNC0((*filter->output_function)(mbfl_utf7imap_base64_table[(cache >> 14) & 0x3f], filter->data));
		FUNC0((*filter->output_function)(mbfl_utf7imap_base64_table[(cache >> 8) & 0x3f], filter->data));
		FUNC0((*filter->output_function)(mbfl_utf7imap_base64_table[(cache >> 2) & 0x3f], filter->data));
		FUNC0((*filter->output_function)(mbfl_utf7imap_base64_table[(cache << 4) & 0x30], filter->data));
		FUNC0((*filter->output_function)(0x2d, filter->data));		/* '-' */
		break;

	case 3:
		FUNC0((*filter->output_function)(mbfl_utf7imap_base64_table[(cache >> 12) & 0x3f], filter->data));
		FUNC0((*filter->output_function)(mbfl_utf7imap_base64_table[(cache >> 6) & 0x3f], filter->data));
		FUNC0((*filter->output_function)(mbfl_utf7imap_base64_table[cache & 0x3f], filter->data));
		FUNC0((*filter->output_function)(0x2d, filter->data));		/* '-' */
		break;
	}
	return 0;
}