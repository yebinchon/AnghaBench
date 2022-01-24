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
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_string ;
struct TYPE_8__ {int /*<<< orphan*/ * s; int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ smart_str ;

/* Variables and functions */
 scalar_t__ IS_STRING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,char) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC15(zval* this_ptr, smart_str* soap_headers)
{
	zval *login, *password;

	if ((login = FUNC13(FUNC2(this_ptr), "_login", sizeof("_login")-1)) != NULL &&
	    FUNC5(login) == IS_STRING &&
	    !FUNC12(FUNC2(this_ptr), "_digest", sizeof("_digest")-1)) {
		zend_string* buf;
		smart_str auth = {0};

		FUNC10(&auth, FUNC4(login), FUNC3(login));
		FUNC9(&auth, ':');
		if ((password = FUNC13(FUNC2(this_ptr), "_password", sizeof("_password")-1)) != NULL &&
		    FUNC5(password) == IS_STRING) {
			FUNC10(&auth, FUNC4(password), FUNC3(password));
		}
		FUNC7(&auth);
		buf = FUNC6((unsigned char*)FUNC1(auth.s), FUNC0(auth.s));
		FUNC8(soap_headers, "Authorization: Basic ");
		FUNC10(soap_headers, (char*)FUNC1(buf), FUNC0(buf));
		FUNC8(soap_headers, "\r\n");
		FUNC14(buf, 0);
		FUNC11(&auth);
		return 1;
	}
	return 0;
}