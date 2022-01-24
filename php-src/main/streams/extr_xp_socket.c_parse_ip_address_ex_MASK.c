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

/* Variables and functions */
 int FUNC0 (char*) ; 
 char* FUNC1 (char const*,int) ; 
 char* FUNC2 (char const*,char,size_t) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ ,char*,char const*) ; 

__attribute__((used)) static inline char *FUNC4(const char *str, size_t str_len, int *portno, int get_err, zend_string **err)
{
	char *colon;
	char *host = NULL;

#ifdef HAVE_IPV6
	char *p;

	if (*(str) == '[' && str_len > 1) {
		/* IPV6 notation to specify raw address with port (i.e. [fe80::1]:80) */
		p = memchr(str + 1, ']', str_len - 2);
		if (!p || *(p + 1) != ':') {
			if (get_err) {
				*err = strpprintf(0, "Failed to parse IPv6 address \"%s\"", str);
			}
			return NULL;
		}
		*portno = atoi(p + 2);
		return estrndup(str + 1, p - str - 1);
	}
#endif
	if (str_len) {
		colon = FUNC2(str, ':', str_len - 1);
	} else {
		colon = NULL;
	}
	if (colon) {
		*portno = FUNC0(colon + 1);
		host = FUNC1(str, colon - str);
	} else {
		if (get_err) {
			*err = FUNC3(0, "Failed to parse address \"%s\"", str);
		}
		return NULL;
	}

	return host;
}