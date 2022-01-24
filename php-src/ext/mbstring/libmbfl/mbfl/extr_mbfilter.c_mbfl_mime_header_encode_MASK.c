#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct mime_header_encoder_data {int* lwsp; size_t lwsplen; int firstindent; TYPE_2__* conv1_filter; } ;
struct TYPE_9__ {size_t len; unsigned char* val; int /*<<< orphan*/ * encoding; int /*<<< orphan*/  no_language; } ;
typedef  TYPE_1__ mbfl_string ;
typedef  int /*<<< orphan*/  mbfl_encoding ;
struct TYPE_10__ {int /*<<< orphan*/  (* filter_function ) (int /*<<< orphan*/ ,TYPE_2__*) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  mbfl_encoding_ascii ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (struct mime_header_encoder_data*) ; 
 struct mime_header_encoder_data* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*,int /*<<< orphan*/  const*) ; 
 TYPE_1__* FUNC3 (struct mime_header_encoder_data*,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,TYPE_2__*) ; 

mbfl_string *
FUNC5(
    mbfl_string *string,
    mbfl_string *result,
    const mbfl_encoding *outcode,
    const mbfl_encoding *encoding,
    const char *linefeed,
    int indent)
{
	size_t n;
	unsigned char *p;
	struct mime_header_encoder_data *pe;

	FUNC0(result);
	result->no_language = string->no_language;
	result->encoding = &mbfl_encoding_ascii;

	pe = FUNC2(string->encoding, outcode, encoding);
	if (pe == NULL) {
		return NULL;
	}

	if (linefeed != NULL) {
		n = 0;
		while (*linefeed && n < 8) {
			pe->lwsp[n++] = *linefeed++;
		}
		pe->lwsp[n++] = 0x20;
		pe->lwsp[n] = '\0';
		pe->lwsplen = n;
	}
	if (indent > 0 && indent < 74) {
		pe->firstindent = indent;
	}

	n = string->len;
	p = string->val;
	while (n > 0) {
		(*pe->conv1_filter->filter_function)(*p++, pe->conv1_filter);
		n--;
	}

	result = FUNC3(pe, result);
	FUNC1(pe);

	return result;
}