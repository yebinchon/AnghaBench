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
typedef  int /*<<< orphan*/  Sdb ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char const*,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC4(Sdb *sdb, const char *key_old, const char *key_new) {
	char *content = FUNC1 (sdb, key_old, 0);
	if (!content) {
		return false;
	}
	FUNC2 (sdb, key_old, 0);
	FUNC3 (sdb, key_new, content, 0);
	FUNC0 (content);
	return true;
}