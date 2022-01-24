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
typedef  int /*<<< orphan*/  smart_str ;
typedef  scalar_t__ encodePtr ;
typedef  int /*<<< orphan*/  enc ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static void FUNC3(encodePtr enc, HashTable *tmp_encoders, smart_str *out) {
	if (enc) {
		zval *encoder_num;
		if ((encoder_num = FUNC2(tmp_encoders, (char*)&enc, sizeof(enc))) != 0) {
			FUNC0(FUNC1(encoder_num), out);
		} else {
			FUNC0(0, out);
		}
	} else {
		FUNC0(0, out);
	}
}