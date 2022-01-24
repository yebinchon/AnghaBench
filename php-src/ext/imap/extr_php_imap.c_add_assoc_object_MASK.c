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
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 scalar_t__ IS_OBJECT ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static zval *FUNC5(zval *arg, char *key, zval *tmp)
{
	HashTable *symtable;

	if (FUNC2(arg) == IS_OBJECT) {
		symtable = FUNC1(arg);
	} else {
		symtable = FUNC0(arg);
	}
	return FUNC4(symtable, key, FUNC3(key), tmp);
}