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
typedef  int /*<<< orphan*/  zend_string ;
typedef  int /*<<< orphan*/  time_t ;

/* Variables and functions */
 int /*<<< orphan*/  MAIL_BUFFER_SIZE ; 
 int OUT_OF_MEMORY ; 
 int FUNC0 (char*) ; 
 int SUCCESS ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char**,char*,char*) ; 
 char* FUNC3 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 char* FUNC5 (char*) ; 
 int /*<<< orphan*/ * FUNC6 (char*,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char*,char*) ; 
 size_t FUNC8 (char*) ; 
 scalar_t__ FUNC9 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 char FUNC12 (char) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(char *RPath, char *Subject, char *mailTo, char *xheaders)
{
	/* Print message header according to RFC 822 */
	/* Return-path, Received, Date, From, Subject, Sender, To, cc */

	int res;
	char *header_buffer;
	char *headers_lc = NULL;
	size_t i;

	if (xheaders) {
		size_t headers_lc_len;

		headers_lc = FUNC5(xheaders);
		headers_lc_len = FUNC8(headers_lc);

		for (i = 0; i < headers_lc_len; i++) {
			headers_lc[i] = FUNC12(headers_lc[i]);
		}
	}

	header_buffer = FUNC3(1, MAIL_BUFFER_SIZE);

	if (!xheaders || !FUNC10(headers_lc, "date:")) {
		time_t tNow = FUNC11(NULL);
		zend_string *dt = FUNC6("r", 1, tNow, 1);

		FUNC7(header_buffer, MAIL_BUFFER_SIZE, "Date: %s\r\n", FUNC1(dt));
		FUNC13(dt);
	}

	if (!headers_lc || !FUNC10(headers_lc, "from:")) {
		if (!FUNC2(&header_buffer, "From: %s\r\n", RPath)) {
			goto PostHeader_outofmem;
		}
	}
	if (!FUNC2(&header_buffer, "Subject: %s\r\n", Subject)) {
		goto PostHeader_outofmem;
	}

	/* Only add the To: field from the $to parameter if isn't in the custom headers */
	if ((headers_lc && (!FUNC10(headers_lc, "\r\nto:") && (FUNC9(headers_lc, "to:", 3) != 0))) || !headers_lc) {
		if (!FUNC2(&header_buffer, "To: %s\r\n", mailTo)) {
			goto PostHeader_outofmem;
		}
	}
	if (xheaders) {
		if (!FUNC2(&header_buffer, "%s\r\n", xheaders)) {
			goto PostHeader_outofmem;
		}
	}

	if (headers_lc) {
		FUNC4(headers_lc);
	}
	if ((res = FUNC0(header_buffer)) != SUCCESS) {
		FUNC4(header_buffer);
		return (res);
	}
	FUNC4(header_buffer);

	if ((res = FUNC0("\r\n")) != SUCCESS) {
		return (res);
	}

	return (SUCCESS);

PostHeader_outofmem:
	if (headers_lc) {
		FUNC4(headers_lc);
	}
	return OUT_OF_MEMORY;
}