#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;

/* Type definitions */
struct TYPE_21__ {size_t len; unsigned char* val; int /*<<< orphan*/ * encoding; int /*<<< orphan*/  no_language; } ;
typedef  TYPE_1__ mbfl_string ;
struct TYPE_22__ {scalar_t__ (* filter_function ) (int /*<<< orphan*/ ,TYPE_2__*) ;TYPE_3__* opaque; scalar_t__ filter_flush; } ;
typedef  TYPE_2__ mbfl_memory_device ;
struct TYPE_23__ {int mode; } ;
typedef  TYPE_3__ mbfl_filt_tl_jisx0201_jisx0208_param ;
typedef  TYPE_2__ mbfl_convert_filter ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 TYPE_2__* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int (*) (int,void*),int (*) (void*),TYPE_2__*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,int (*) (int,void*),int (*) (void*),TYPE_2__*) ; 
 int /*<<< orphan*/  mbfl_encoding_wchar ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 scalar_t__ FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_2__*,size_t,int /*<<< orphan*/ ) ; 
 int FUNC7 (int,void*) ; 
 TYPE_1__* FUNC8 (TYPE_2__*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,TYPE_2__*) ; 
 int /*<<< orphan*/  vtbl_tl_jisx0201_jisx0208 ; 

mbfl_string *
FUNC11(
    mbfl_string *string,
    mbfl_string *result,
    int mode)
{
	size_t n;
	unsigned char *p;
	mbfl_memory_device device;
	mbfl_convert_filter *decoder = NULL;
	mbfl_convert_filter *encoder = NULL;
	mbfl_convert_filter *tl_filter = NULL;
	mbfl_convert_filter *next_filter = NULL;
	mbfl_filt_tl_jisx0201_jisx0208_param *param = NULL;

	FUNC6(&device, string->len, 0);
	FUNC9(result);

	result->no_language = string->no_language;
	result->encoding = string->encoding;

	decoder = FUNC2(
		&mbfl_encoding_wchar,
		string->encoding,
		mbfl_memory_device_output, 0, &device);
	if (decoder == NULL) {
		goto out;
	}
	next_filter = decoder;

	param =
		(mbfl_filt_tl_jisx0201_jisx0208_param *)FUNC5(sizeof(mbfl_filt_tl_jisx0201_jisx0208_param));
	if (param == NULL) {
		goto out;
	}

	param->mode = mode;

	tl_filter = FUNC3(
		&vtbl_tl_jisx0201_jisx0208,
		(int(*)(int, void*))next_filter->filter_function,
		(int(*)(void*))next_filter->filter_flush,
		next_filter);
	if (tl_filter == NULL) {
		FUNC4(param);
		goto out;
	}

	tl_filter->opaque = param;
	next_filter = tl_filter;

	encoder = FUNC2(
		string->encoding,
		&mbfl_encoding_wchar,
		(int(*)(int, void*))next_filter->filter_function,
		(int(*)(void*))next_filter->filter_flush,
		next_filter);
	if (encoder == NULL) {
		goto out;
	}

	/* feed data */
	p = string->val;
	n = string->len;
	if (p != NULL) {
		while (n > 0) {
			if ((*encoder->filter_function)(*p++, encoder) < 0) {
				break;
			}
			n--;
		}
	}

	FUNC1(encoder);
	result = FUNC8(&device, result);
out:
	if (tl_filter != NULL) {
		if (tl_filter->opaque != NULL) {
			FUNC4(tl_filter->opaque);
		}
		FUNC0(tl_filter);
	}

	if (decoder != NULL) {
		FUNC0(decoder);
	}

	if (encoder != NULL) {
		FUNC0(encoder);
	}

	return result;
}