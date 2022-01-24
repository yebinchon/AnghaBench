#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_4__ {scalar_t__ auth_digest; scalar_t__ auth_password; scalar_t__ auth_user; } ;
struct TYPE_3__ {int /*<<< orphan*/  (* register_server_variables ) (int /*<<< orphan*/ *) ;} ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__ FUNC1 (int /*<<< orphan*/ ) ; 
 size_t TRACK_VARS_SERVER ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  http_globals ; 
 int /*<<< orphan*/  FUNC8 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  request_info ; 
 int /*<<< orphan*/  FUNC9 () ; 
 TYPE_1__ sapi_module ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline void FUNC13(void)
{
	zval tmp;
	zval *arr = &FUNC0(http_globals)[TRACK_VARS_SERVER];
	HashTable *ht;

	FUNC12(arr);
	FUNC7(arr);

	/* Server variables */
	if (sapi_module.register_server_variables) {
		sapi_module.register_server_variables(arr);
	}
	ht = FUNC5(arr);

	/* PHP Authentication support */
	if (FUNC1(request_info).auth_user) {
		FUNC4(&tmp, FUNC1(request_info).auth_user);
		FUNC8("PHP_AUTH_USER", sizeof("PHP_AUTH_USER")-1, &tmp, ht);
	}
	if (FUNC1(request_info).auth_password) {
		FUNC4(&tmp, FUNC1(request_info).auth_password);
		FUNC8("PHP_AUTH_PW", sizeof("PHP_AUTH_PW")-1, &tmp, ht);
	}
	if (FUNC1(request_info).auth_digest) {
		FUNC4(&tmp, FUNC1(request_info).auth_digest);
		FUNC8("PHP_AUTH_DIGEST", sizeof("PHP_AUTH_DIGEST")-1, &tmp, ht);
	}

	/* store request init time */
	FUNC2(&tmp, FUNC9());
	FUNC8("REQUEST_TIME_FLOAT", sizeof("REQUEST_TIME_FLOAT")-1, &tmp, ht);
	FUNC3(&tmp, FUNC11(FUNC6(tmp)));
	FUNC8("REQUEST_TIME", sizeof("REQUEST_TIME")-1, &tmp, ht);
}