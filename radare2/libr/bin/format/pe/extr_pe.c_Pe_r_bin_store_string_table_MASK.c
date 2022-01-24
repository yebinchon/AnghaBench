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
struct TYPE_3__ {int numOfChildren; int /*<<< orphan*/ * Children; scalar_t__ szKey; } ;
typedef  TYPE_1__ StringTable ;
typedef  int /*<<< orphan*/  Sdb ;

/* Variables and functions */
 int /*<<< orphan*/  EIGHT_HEX_DIG_UTF_16_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (unsigned char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 

__attribute__((used)) static Sdb* FUNC8(StringTable* stringTable) {
	char key[20];
	char* encodedKey = NULL;
	int i = 0;
	Sdb* sdb = NULL;
	if (!stringTable) {
		return NULL;
	}
	sdb = FUNC4 ();
	if (!sdb) {
		return NULL;
	}
	encodedKey = FUNC2 ((unsigned char*) stringTable->szKey, EIGHT_HEX_DIG_UTF_16_LEN);
	if (!encodedKey) {
		FUNC3 (sdb);
		return NULL;
	}
	FUNC6 (sdb, "key", encodedKey, 0);
	FUNC1 (encodedKey);
	for (; i < stringTable->numOfChildren; i++) {
		FUNC7 (key, 20, "string%d", i);
		FUNC5 (sdb, key, FUNC0 (stringTable->Children[i]));
	}
	return sdb;
}