#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {char* val; int len; } ;
typedef  TYPE_1__ zend_string ;
typedef  scalar_t__ ssize_t ;
typedef  int /*<<< orphan*/  php_stream ;
typedef  int /*<<< orphan*/  headerbuf ;

/* Variables and functions */
 char FALSE ; 
 int INT_MAX ; 
 char TRUE ; 
 TYPE_1__* FUNC0 () ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC8 (char*,char*,int*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,int) ; 
 TYPE_1__* FUNC10 (int,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC11 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static zend_string* FUNC13(php_stream *stream, int close, char *headers)
{
	zend_string *http_buf = NULL;
	char *header;
	int header_close = close, header_chunked = 0, header_length = 0, http_buf_size = 0;

	if (!close) {
		header = FUNC3(headers, "Connection: ");
		if (header) {
			if(!FUNC9(header, "close", sizeof("close")-1)) header_close = 1;
			FUNC2(header);
		}
	}
	header = FUNC3(headers, "Transfer-Encoding: ");
	if (header) {
		if(!FUNC9(header, "chunked", sizeof("chunked")-1)) header_chunked = 1;
		FUNC2(header);
	}
	header = FUNC3(headers, "Content-Length: ");
	if (header) {
		header_length = FUNC1(header);
		FUNC2(header);
		if (!header_length && !header_chunked) {
			/* Empty response */
			return FUNC0();
		}
	}

	if (header_chunked) {
		char ch, done, headerbuf[8192];

		done = FALSE;

		while (!done) {
			int buf_size = 0;

			FUNC6(stream, headerbuf, sizeof(headerbuf));
			if (FUNC8(headerbuf, "%x", &buf_size) > 0 ) {
				if (buf_size > 0) {
					size_t len_size = 0;

					if (http_buf_size + buf_size + 1 < 0) {
						if (http_buf) {
							FUNC12(http_buf, 0);
						}
						return NULL;
					}

					if (http_buf) {
						http_buf = FUNC11(http_buf, http_buf_size + buf_size, 0);
					} else {
						http_buf = FUNC10(buf_size, 0);
					}

					while (len_size < buf_size) {
						ssize_t len_read = FUNC7(stream, http_buf->val + http_buf_size, buf_size - len_size);
						if (len_read <= 0) {
							/* Error or EOF */
							done = TRUE;
						  break;
						}
						len_size += len_read;
	 					http_buf_size += len_read;
 					}

					/* Eat up '\r' '\n' */
					ch = FUNC5(stream);
					if (ch == '\r') {
						ch = FUNC5(stream);
					}
					if (ch != '\n') {
						/* Something wrong in chunked encoding */
						if (http_buf) {
							FUNC12(http_buf, 0);
						}
						return NULL;
					}
 				}
			} else {
				/* Something wrong in chunked encoding */
				if (http_buf) {
					FUNC12(http_buf, 0);
				}
				return NULL;
			}
			if (buf_size == 0) {
				done = TRUE;
			}
		}

		/* Ignore trailer headers */
		while (1) {
			if (!FUNC6(stream, headerbuf, sizeof(headerbuf))) {
				break;
			}

			if ((headerbuf[0] == '\r' && headerbuf[1] == '\n') ||
			    (headerbuf[0] == '\n')) {
				/* empty line marks end of headers */
				break;
			}
		}

		if (http_buf == NULL) {
			return FUNC0();
		}

	} else if (header_length) {
		if (header_length < 0 || header_length >= INT_MAX) {
			return NULL;
		}
		http_buf = FUNC10(header_length, 0);
		while (http_buf_size < header_length) {
			ssize_t len_read = FUNC7(stream, http_buf->val + http_buf_size, header_length - http_buf_size);
			if (len_read <= 0) {
				break;
			}
			http_buf_size += len_read;
		}
	} else if (header_close) {
		do {
			ssize_t len_read;
			if (http_buf) {
				http_buf = FUNC11(http_buf, http_buf_size + 4096, 0);
			} else {
				http_buf = FUNC10(4096, 0);
			}
			len_read = FUNC7(stream, http_buf->val + http_buf_size, 4096);
			if (len_read > 0) {
				http_buf_size += len_read;
			}
		} while(!FUNC4(stream));
	} else {
		return NULL;
	}

	http_buf->val[http_buf_size] = '\0';
	http_buf->len = http_buf_size;
	return http_buf;
}