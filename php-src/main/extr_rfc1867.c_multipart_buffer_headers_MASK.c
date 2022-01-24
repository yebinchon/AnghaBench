#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_llist ;
struct TYPE_10__ {int /*<<< orphan*/ * c; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ smart_string ;
struct TYPE_11__ {int /*<<< orphan*/  detect_order_size; int /*<<< orphan*/  detect_order; int /*<<< orphan*/  input_encoding; int /*<<< orphan*/  boundary; } ;
typedef  TYPE_2__ multipart_buffer ;
struct TYPE_12__ {char* key; int /*<<< orphan*/ * value; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_3__ mime_header_entry ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (char) ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,char*) ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (unsigned char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC11(multipart_buffer *self, zend_llist *header)
{
	char *line;
	mime_header_entry entry = {0};
	smart_string buf_value = {0};
	char *key = NULL;

	/* didn't find boundary, abort */
	if (!FUNC1(self, self->boundary)) {
		return 0;
	}

	/* get lines of text, or CRLF_CRLF */

	while ((line = FUNC2(self)) && line[0] != '\0') {
		/* add header to table */
		char *value = NULL;

		if (FUNC4()) {
			self->input_encoding = FUNC10((const unsigned char *) line, FUNC8(line), self->detect_order, self->detect_order_size);
		}

		/* space in the beginning means same header */
		if (!FUNC3(line[0])) {
			value = FUNC7(line, ':');
		}

		if (value) {
			if (buf_value.c && key) {
				/* new entry, add the old one to the list */
				FUNC5(&buf_value);
				entry.key = key;
				entry.value = buf_value.c;
				FUNC9(header, &entry);
				buf_value.c = NULL;
				key = NULL;
			}

			*value = '\0';
			do { value++; } while (FUNC3(*value));

			key = FUNC0(line);
			FUNC6(&buf_value, value);
		} else if (buf_value.c) { /* If no ':' on the line, add to previous line */
			FUNC6(&buf_value, line);
		} else {
			continue;
		}
	}

	if (buf_value.c && key) {
		/* add the last one to the list */
		FUNC5(&buf_value);
		entry.key = key;
		entry.value = buf_value.c;
		FUNC9(header, &entry);
	}

	return 1;
}