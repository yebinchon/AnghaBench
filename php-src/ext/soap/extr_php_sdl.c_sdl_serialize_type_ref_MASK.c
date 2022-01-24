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
typedef  int /*<<< orphan*/  type ;
typedef  int /*<<< orphan*/  smart_str ;
typedef  scalar_t__ sdlTypePtr ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC3(sdlTypePtr type, HashTable *tmp_types, smart_str *out) {
	if (type) {
		zval *type_num;
		if ((type_num = FUNC2(tmp_types, (char*)&type, sizeof(type))) != NULL) {
			FUNC0(FUNC1(type_num), out);
		} else {
			FUNC0(0, out);
		}
	} else {
		FUNC0(0,out);
	}
}