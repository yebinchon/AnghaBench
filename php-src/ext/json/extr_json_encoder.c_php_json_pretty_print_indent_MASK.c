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
typedef  int /*<<< orphan*/  smart_str ;
struct TYPE_3__ {int depth; } ;
typedef  TYPE_1__ php_json_encoder ;

/* Variables and functions */
 int PHP_JSON_PRETTY_PRINT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int) ; 

__attribute__((used)) static inline void FUNC1(smart_str *buf, int options, php_json_encoder *encoder) /* {{{ */
{
	int i;

	if (options & PHP_JSON_PRETTY_PRINT) {
		for (i = 0; i < encoder->depth; ++i) {
			FUNC0(buf, "    ", 4);
		}
	}
}