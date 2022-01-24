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
struct TYPE_3__ {int /*<<< orphan*/  wValueLength; scalar_t__ Value; int /*<<< orphan*/  wKeyLen; scalar_t__ szKey; } ;
typedef  TYPE_1__ String ;
typedef  int /*<<< orphan*/  Sdb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static Sdb* FUNC5(String* string) {
	Sdb* sdb = NULL;
	char* encodedVal = NULL, * encodedKey = NULL;
	if (!string) {
		return NULL;
	}
	sdb = FUNC3 ();
	if (!sdb) {
		return NULL;
	}
	encodedKey = FUNC1 ((unsigned char*) string->szKey, string->wKeyLen);
	if (!encodedKey) {
		FUNC2 (sdb);
		return NULL;
	}
	encodedVal = FUNC1 ((unsigned char*) string->Value, string->wValueLength);
	if (!encodedVal) {
		FUNC0 (encodedKey);
		FUNC2 (sdb);
		return NULL;
	}
	FUNC4 (sdb, "key",   encodedKey, 0);
	FUNC4 (sdb, "value", encodedVal, 0);
	FUNC0 (encodedKey);
	FUNC0 (encodedVal);
	return sdb;
}