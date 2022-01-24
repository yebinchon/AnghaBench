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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_bool ;
typedef  int /*<<< orphan*/  smart_str ;
typedef  int /*<<< orphan*/  php_stream_context ;

/* Variables and functions */
 scalar_t__ IS_STRING ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 char* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int) ; 
 scalar_t__ FUNC6 (char*,char*,int) ; 

void FUNC7(php_stream_context* context,
                          zend_bool has_authorization,
                          zend_bool has_proxy_authorization,
                          zend_bool has_cookies,
                          smart_str* soap_headers)
{
	zval *tmp;

	if (context &&
		(tmp = FUNC3(context, "http", "header")) != NULL &&
		FUNC2(tmp) == IS_STRING && FUNC0(tmp)) {
		char *s = FUNC1(tmp);
		char *p;
		int name_len;

		while (*s) {
			/* skip leading newlines and spaces */
			while (*s == ' ' || *s == '\t' || *s == '\r' || *s == '\n') {
				s++;
			}
			/* extract header name */
			p = s;
			name_len = -1;
			while (*p) {
				if (*p == ':') {
					if (name_len < 0) name_len = p - s;
					break;
				} else if (*p == ' ' || *p == '\t') {
					if (name_len < 0) name_len = p - s;
				} else if (*p == '\r' || *p == '\n') {
					break;
				}
				p++;
			}
			if (*p == ':') {
				/* extract header value */
				while (*p && *p != '\r' && *p != '\n') {
					p++;
				}
				/* skip some predefined headers */
				if ((name_len != sizeof("host")-1 ||
				     FUNC6(s, "host", sizeof("host")-1) != 0) &&
				    (name_len != sizeof("connection")-1 ||
				     FUNC6(s, "connection", sizeof("connection")-1) != 0) &&
				    (name_len != sizeof("user-agent")-1 ||
				     FUNC6(s, "user-agent", sizeof("user-agent")-1) != 0) &&
				    (name_len != sizeof("content-length")-1 ||
				     FUNC6(s, "content-length", sizeof("content-length")-1) != 0) &&
				    (name_len != sizeof("content-type")-1 ||
				     FUNC6(s, "content-type", sizeof("content-type")-1) != 0) &&
				    (!has_cookies ||
				     name_len != sizeof("cookie")-1 ||
				     FUNC6(s, "cookie", sizeof("cookie")-1) != 0) &&
				    (!has_authorization ||
				     name_len != sizeof("authorization")-1 ||
				     FUNC6(s, "authorization", sizeof("authorization")-1) != 0) &&
				    (!has_proxy_authorization ||
				     name_len != sizeof("proxy-authorization")-1 ||
				     FUNC6(s, "proxy-authorization", sizeof("proxy-authorization")-1) != 0)) {
				    /* add header */
					FUNC5(soap_headers, s, p-s);
					FUNC4(soap_headers, "\r\n");
				}
			}
			s = (*p) ? (p + 1) : p;
		}
	}
}