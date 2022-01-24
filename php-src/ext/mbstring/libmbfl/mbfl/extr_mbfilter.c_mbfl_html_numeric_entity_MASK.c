#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct collector_htmlnumericentity_data {int* convmap; int mapsize; TYPE_2__* decoder; scalar_t__ digit; scalar_t__ cache; scalar_t__ status; } ;
struct TYPE_12__ {size_t len; unsigned char* val; int /*<<< orphan*/ * encoding; int /*<<< orphan*/  no_language; } ;
typedef  TYPE_1__ mbfl_string ;
typedef  struct collector_htmlnumericentity_data mbfl_memory_device ;
struct TYPE_13__ {scalar_t__ (* filter_function ) (int /*<<< orphan*/ ,TYPE_2__*) ;} ;
typedef  TYPE_2__ mbfl_convert_filter ;

/* Variables and functions */
 int /*<<< orphan*/  collector_decode_htmlnumericentity ; 
 int /*<<< orphan*/  collector_encode_hex_htmlnumericentity ; 
 int /*<<< orphan*/  collector_encode_htmlnumericentity ; 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 void* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int (*) (void*),struct collector_htmlnumericentity_data*) ; 
 int /*<<< orphan*/  mbfl_encoding_wchar ; 
 scalar_t__ mbfl_filt_decode_htmlnumericentity_flush ; 
 int /*<<< orphan*/  FUNC3 (struct collector_htmlnumericentity_data*,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mbfl_memory_device_output ; 
 TYPE_1__* FUNC4 (struct collector_htmlnumericentity_data*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,TYPE_2__*) ; 

mbfl_string *
FUNC7(
    mbfl_string *string,
    mbfl_string *result,
    int *convmap,
    int mapsize,
    int type)
{
	struct collector_htmlnumericentity_data pc;
	mbfl_memory_device device;
	mbfl_convert_filter *encoder;
	size_t n;
	unsigned char *p;

	if (string == NULL || result == NULL) {
		return NULL;
	}
	FUNC5(result);
	result->no_language = string->no_language;
	result->encoding = string->encoding;
	FUNC3(&device, string->len, 0);

	/* output code filter */
	pc.decoder = FUNC2(
	    &mbfl_encoding_wchar,
	    string->encoding,
	    mbfl_memory_device_output, 0, &device);
	/* wchar filter */
	if (type == 0) { /* decimal output */
		encoder = FUNC2(
		    string->encoding,
		    &mbfl_encoding_wchar,
		    collector_encode_htmlnumericentity, 0, &pc);
	} else if (type == 2) { /* hex output */
		encoder = FUNC2(
		    string->encoding,
		    &mbfl_encoding_wchar,
		    collector_encode_hex_htmlnumericentity, 0, &pc);
	} else { /* type == 1: decimal/hex input */
		encoder = FUNC2(
		    string->encoding,
		    &mbfl_encoding_wchar,
		    collector_decode_htmlnumericentity,
			(int (*)(void*))mbfl_filt_decode_htmlnumericentity_flush, &pc);
	}
	if (pc.decoder == NULL || encoder == NULL) {
		FUNC0(encoder);
		FUNC0(pc.decoder);
		return NULL;
	}
	pc.status = 0;
	pc.cache = 0;
	pc.digit = 0;
	pc.convmap = convmap;
	pc.mapsize = mapsize;

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
	FUNC1(pc.decoder);
	result = FUNC4(&device, result);
	FUNC0(encoder);
	FUNC0(pc.decoder);

	return result;
}