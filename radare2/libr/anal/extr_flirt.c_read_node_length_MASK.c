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
typedef  int ut8 ;
struct TYPE_3__ {int /*<<< orphan*/  length; } ;
typedef  TYPE_1__ RFlirtNode ;
typedef  int /*<<< orphan*/  RBuffer ;

/* Variables and functions */
 scalar_t__ buf_eof ; 
 scalar_t__ buf_err ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static ut8 FUNC2(RFlirtNode *node, RBuffer *b) {
	node->length = FUNC1 (b);
	if (buf_eof || buf_err) {
		return false;
	}
#if DEBUG
	eprintf ("node length: %02X\n", node->length);
#endif
	return true;
}