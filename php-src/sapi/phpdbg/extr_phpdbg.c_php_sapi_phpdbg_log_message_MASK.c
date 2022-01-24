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
#define  E_COMPILE_ERROR 137 
#define  E_CORE_ERROR 136 
#define  E_ERROR 135 
#define  E_PARSE 134 
#define  E_RECOVERABLE_ERROR 133 
#define  E_USER_ERROR 132 
 int FUNC0 (int /*<<< orphan*/ ) ; 
#define  PHPDBG_FINISH 131 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int PHPDBG_IN_EVAL ; 
 int PHPDBG_IS_STOPPING ; 
#define  PHPDBG_LEAVE 130 
#define  PHPDBG_NEXT 129 
 int PHPDBG_PREVENT_INTERACTIVE ; 
#define  PHPDBG_UNTIL 128 
 int /*<<< orphan*/  flags ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  last_error_type ; 
 scalar_t__ phpdbg_booted ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  phpdbg_fully_started ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC6 (char const*) ; 
 char* FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/ * FUNC9 (char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC11(char *message, int syslog_type_int) /* {{{ */
{
	/*
	* We must not request TSRM before being booted
	*/
	if (phpdbg_booted) {
		if (FUNC1(flags) & PHPDBG_IN_EVAL) {
			FUNC3("eval", "msg=\"%s\"", "%s", message);
			return;
		}

		FUNC3("php", "msg=\"%s\"", "%s", message);

		if (FUNC1(flags) & PHPDBG_PREVENT_INTERACTIVE) {
			return;
		}

		switch (FUNC0(last_error_type)) {
			case E_ERROR:
			case E_CORE_ERROR:
			case E_COMPILE_ERROR:
			case E_USER_ERROR:
			case E_PARSE:
			case E_RECOVERABLE_ERROR: {
				const char *file_char = FUNC7();
				zend_string *file = FUNC9(file_char, FUNC6(file_char), 0);
				FUNC5(file, 3, FUNC8() - 1, FUNC8());
				FUNC10(file);

				if (!phpdbg_fully_started) {
					return;
				}

				do {
					switch (FUNC4(1, NULL)) {
						case PHPDBG_LEAVE:
						case PHPDBG_FINISH:
						case PHPDBG_UNTIL:
						case PHPDBG_NEXT:
							return;
					}
				} while (!(FUNC1(flags) & PHPDBG_IS_STOPPING));
			}
		}
	} else {
		FUNC2(stdout, "%s\n", message);
	}
}