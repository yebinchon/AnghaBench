#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_2__ ;
typedef  struct TYPE_16__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {int len; unsigned char* val; int /*<<< orphan*/  const* encoding; } ;
typedef  TYPE_1__ mbfl_string ;
struct TYPE_17__ {scalar_t__ (* filter_function ) (int /*<<< orphan*/ ,TYPE_2__*) ;int illegal_substchar; int /*<<< orphan*/  illegal_mode; } ;
typedef  TYPE_2__ mbfl_memory_device ;
typedef  int /*<<< orphan*/  mbfl_encoding ;
typedef  TYPE_2__ mbfl_convert_filter ;

/* Variables and functions */
 int /*<<< orphan*/  MBFL_OUTPUTFILTER_ILLEGAL_MODE_CHAR ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int (*) (int,void*),int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  const mbfl_encoding_wchar ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int,int) ; 
 int FUNC5 (int,void*) ; 
 TYPE_1__* FUNC6 (TYPE_2__*,TYPE_1__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,TYPE_2__*) ; 

mbfl_string *
FUNC8(
    mbfl_string *string,
    mbfl_string *result,
    const mbfl_encoding *toenc)
{
	size_t n;
	unsigned char *p;
	mbfl_memory_device device;
	mbfl_convert_filter *filter1;
	mbfl_convert_filter *filter2;

	/* initialize */
	if (toenc == NULL || string == NULL || result == NULL) {
		return NULL;
	}

	filter1 = NULL;
	filter2 = NULL;
	if (FUNC2(string->encoding, toenc) != NULL) {
		filter1 = FUNC3(string->encoding, toenc, mbfl_memory_device_output, 0, &device);
	} else {
		filter2 = FUNC3(&mbfl_encoding_wchar, toenc, mbfl_memory_device_output, 0, &device);
		if (filter2 != NULL) {
			filter1 = FUNC3(string->encoding, &mbfl_encoding_wchar, (int (*)(int, void*))filter2->filter_function, NULL, filter2);
			if (filter1 == NULL) {
				FUNC0(filter2);
			}
		}
	}
	if (filter1 == NULL) {
		return NULL;
	}

	if (filter2 != NULL) {
		filter2->illegal_mode = MBFL_OUTPUTFILTER_ILLEGAL_MODE_CHAR;
		filter2->illegal_substchar = 0x3f;		/* '?' */
	}

	FUNC4(&device, string->len, (string->len >> 2) + 8);

	/* feed data */
	n = string->len;
	p = string->val;
	if (p != NULL) {
		while (n > 0) {
			if ((*filter1->filter_function)(*p++, filter1) < 0) {
				break;
			}
			n--;
		}
	}

	FUNC1(filter1);
	FUNC0(filter1);
	if (filter2 != NULL) {
		FUNC1(filter2);
		FUNC0(filter2);
	}

	return FUNC6(&device, result);
}