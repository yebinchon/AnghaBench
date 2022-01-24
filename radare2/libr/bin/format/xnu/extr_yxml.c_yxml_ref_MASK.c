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
struct TYPE_3__ {int reflen; scalar_t__ data; } ;
typedef  TYPE_1__ yxml_t ;
typedef  int /*<<< orphan*/  yxml_ret_t ;

/* Variables and functions */
 int /*<<< orphan*/  YXML_EREF ; 
 int /*<<< orphan*/  YXML_OK ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,unsigned int) ; 

__attribute__((used)) static yxml_ret_t FUNC1(yxml_t *x, unsigned ch) {
	if(x->reflen >= sizeof(x->data)-1)
		return YXML_EREF;
	FUNC0(x->data+x->reflen, ch);
	x->reflen++;
	return YXML_OK;
}