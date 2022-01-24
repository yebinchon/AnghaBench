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
typedef  int /*<<< orphan*/  ut8 ;
typedef  int ut16 ;
struct TYPE_3__ {int a_width; int n; int c; int /*<<< orphan*/  sign; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ ebc_index_t ;

/* Variables and functions */
 int /*<<< orphan*/  EBC_INDEX16 ; 
 int /*<<< orphan*/  EBC_INDEX_MINUS ; 
 int /*<<< orphan*/  EBC_INDEX_PLUS ; 
 int FUNC0 (int) ; 

__attribute__((used)) static int FUNC1(const ut8 *data, ebc_index_t *index) {
	ut16 tmp = *(ut16*)data;
	index->type = EBC_INDEX16;
	index->sign = tmp & 0x8000 ? EBC_INDEX_PLUS : EBC_INDEX_MINUS;
	index->a_width = ((tmp >> 12) & FUNC0(2)) * 2;
	index->n = tmp & FUNC0(index->a_width);
	index->c = (tmp >> index->a_width) & FUNC0(12 - index->a_width);
	return 0;
}