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
struct key_value_s {char* key; char* value; int /*<<< orphan*/ * next; } ;

/* Variables and functions */
 int ZEND_INI_PARSER_ENTRY ; 
 int /*<<< orphan*/  ZLOG_ERROR ; 
 char* FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (struct key_value_s*,int) ; 
 int FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void FUNC4(zval *arg1, zval *arg2, zval *arg3, int callback_type, void *arg) /* {{{ */
{
	int *mode = (int *)arg;
	char *key;
	char *value = NULL;
	struct key_value_s kv;

	if (!mode || !arg1) return;

	if (callback_type != ZEND_INI_PARSER_ENTRY) {
		FUNC3(ZLOG_ERROR, "Passing INI directive through FastCGI: only classic entries are allowed");
		return;
	}

	key = FUNC0(arg1);

	if (!key || FUNC2(key) < 1) {
		FUNC3(ZLOG_ERROR, "Passing INI directive through FastCGI: empty key");
		return;
	}

	if (arg2) {
		value = FUNC0(arg2);
	}

	if (!value) {
		FUNC3(ZLOG_ERROR, "Passing INI directive through FastCGI: empty value for key '%s'", key);
		return;
	}

	kv.key = key;
	kv.value = value;
	kv.next = NULL;
	if (FUNC1(&kv, *mode) == -1) {
		FUNC3(ZLOG_ERROR, "Passing INI directive through FastCGI: unable to set '%s'", key);
	}
}