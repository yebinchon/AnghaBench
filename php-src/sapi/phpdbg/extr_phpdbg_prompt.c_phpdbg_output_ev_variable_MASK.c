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
 int SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,char*,int,char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC5(char *name, size_t len, char *keyname, size_t keylen, HashTable *parent, zval *zv) /* {{{ */ {
	FUNC1("eval", "variable=\"%.*s\"", "Printing variable %.*s", (int) len, name);
	FUNC3("<eval %r>");
	FUNC4(zv, 0);
	FUNC3("</eval>");
	FUNC2("\n");

	FUNC0(name);
	FUNC0(keyname);

	return SUCCESS;
}