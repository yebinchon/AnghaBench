#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_string ;
struct php_sqlite3_bound_param {int param_number; int /*<<< orphan*/ * name; } ;
struct TYPE_3__ {int /*<<< orphan*/  stmt; int /*<<< orphan*/ * bound_params; } ;
typedef  TYPE_1__ php_sqlite3_stmt ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*,char*,scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  sqlite3_param_dtor ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,struct php_sqlite3_bound_param*,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,struct php_sqlite3_bound_param*,int) ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC12(struct php_sqlite3_bound_param *param, php_sqlite3_stmt *stmt) /* {{{ */
{
	HashTable *hash;
	hash = stmt->bound_params;

	if (!hash) {
		FUNC0(hash);
		FUNC7(hash, 13, NULL, sqlite3_param_dtor, 0);
		stmt->bound_params = hash;
	}

	/* We need a : prefix to resolve a name to a parameter number */
	if (param->name) {
		if (FUNC2(param->name)[0] != ':' && FUNC2(param->name)[0] != '@') {
			/* pre-increment for character + 1 for null */
			zend_string *temp = FUNC9(FUNC1(param->name) + 1, 0);
			FUNC2(temp)[0] = ':';
			FUNC3(FUNC2(temp) + 1, FUNC2(param->name), FUNC1(param->name) + 1);
			param->name = temp;
		} else {
			param->name = FUNC10(param->name);
		}
		/* do lookup*/
		param->param_number = FUNC4(stmt->stmt, FUNC2(param->name));
	}

	if (param->param_number < 1) {
		if (param->name) {
			FUNC11(param->name, 0);
		}
		return 0;
	}

	if (param->param_number >= 1) {
		FUNC5(hash, param->param_number);
	}

	if (param->name) {
		FUNC8(hash, param->name, param, sizeof(struct php_sqlite3_bound_param));
	} else {
		FUNC6(hash, param->param_number, param, sizeof(struct php_sqlite3_bound_param));
	}

	return 1;
}