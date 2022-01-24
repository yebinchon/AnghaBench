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
typedef  char zend_string ;
typedef  scalar_t__ time_t ;
struct timeval {int tv_sec; } ;
struct TYPE_8__ {char* s; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ smart_str ;

/* Variables and functions */
 char* COOKIE_DOMAIN ; 
 char* COOKIE_EXPIRES ; 
 char* COOKIE_HTTPONLY ; 
 char* COOKIE_MAX_AGE ; 
 char* COOKIE_PATH ; 
 char* COOKIE_SAMESITE ; 
 char* COOKIE_SECURE ; 
 int /*<<< orphan*/  E_WARNING ; 
 int FAILURE ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int SUCCESS ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  cookie_domain ; 
 int /*<<< orphan*/  cookie_httponly ; 
 int /*<<< orphan*/  cookie_lifetime ; 
 int /*<<< orphan*/  cookie_path ; 
 int /*<<< orphan*/  cookie_samesite ; 
 int /*<<< orphan*/  cookie_secure ; 
 int /*<<< orphan*/  FUNC4 (char*,int) ; 
 int /*<<< orphan*/  FUNC5 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  headers_sent ; 
 int /*<<< orphan*/  id ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 char* FUNC7 (char*,int,scalar_t__,int /*<<< orphan*/ ) ; 
 char* FUNC8 () ; 
 int FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 char* FUNC11 (char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  session_name ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_1__*,char*,int) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int FUNC19 (char*) ; 
 int /*<<< orphan*/  FUNC20 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC21(void) /* {{{ */
{
	smart_str ncookie = {0};
	zend_string *date_fmt = NULL;
	zend_string *e_session_name, *e_id;

	if (FUNC1(headers_sent)) {
		const char *output_start_filename = FUNC8();
		int output_start_lineno = FUNC9();

		if (output_start_filename) {
			FUNC6(NULL, E_WARNING, "Cannot send session cookie - headers already sent by (output started at %s:%d)", output_start_filename, output_start_lineno);
		} else {
			FUNC6(NULL, E_WARNING, "Cannot send session cookie - headers already sent");
		}
		return FAILURE;
	}

	/* URL encode session_name and id because they might be user supplied */
	e_session_name = FUNC11(FUNC0(session_name), FUNC19(FUNC0(session_name)));
	e_id = FUNC11(FUNC3(FUNC0(id)), FUNC2(FUNC0(id)));

	FUNC16(&ncookie, "Set-Cookie: ", sizeof("Set-Cookie: ")-1);
	FUNC16(&ncookie, FUNC3(e_session_name), FUNC2(e_session_name));
	FUNC15(&ncookie, '=');
	FUNC16(&ncookie, FUNC3(e_id), FUNC2(e_id));

	FUNC20(e_session_name, 0);
	FUNC20(e_id, 0);

	if (FUNC0(cookie_lifetime) > 0) {
		struct timeval tv;
		time_t t;

		FUNC5(&tv, NULL);
		t = tv.tv_sec + FUNC0(cookie_lifetime);

		if (t > 0) {
			date_fmt = FUNC7("D, d-M-Y H:i:s T", sizeof("D, d-M-Y H:i:s T")-1, t, 0);
			FUNC17(&ncookie, COOKIE_EXPIRES);
			FUNC16(&ncookie, FUNC3(date_fmt), FUNC2(date_fmt));
			FUNC20(date_fmt, 0);

			FUNC17(&ncookie, COOKIE_MAX_AGE);
			FUNC14(&ncookie, FUNC0(cookie_lifetime));
		}
	}

	if (FUNC0(cookie_path)[0]) {
		FUNC17(&ncookie, COOKIE_PATH);
		FUNC17(&ncookie, FUNC0(cookie_path));
	}

	if (FUNC0(cookie_domain)[0]) {
		FUNC17(&ncookie, COOKIE_DOMAIN);
		FUNC17(&ncookie, FUNC0(cookie_domain));
	}

	if (FUNC0(cookie_secure)) {
		FUNC17(&ncookie, COOKIE_SECURE);
	}

	if (FUNC0(cookie_httponly)) {
		FUNC17(&ncookie, COOKIE_HTTPONLY);
	}

	if (FUNC0(cookie_samesite)[0]) {
    	FUNC17(&ncookie, COOKIE_SAMESITE);
    	FUNC17(&ncookie, FUNC0(cookie_samesite));
    }

	FUNC13(&ncookie);

	FUNC10(); /* remove already sent session ID cookie */
	/*	'replace' must be 0 here, else a previous Set-Cookie
		header, probably sent with setcookie() will be replaced! */
	FUNC12(FUNC4(FUNC3(ncookie.s), FUNC2(ncookie.s)), FUNC2(ncookie.s), 0, 0);
	FUNC18(&ncookie);

	return SUCCESS;
}