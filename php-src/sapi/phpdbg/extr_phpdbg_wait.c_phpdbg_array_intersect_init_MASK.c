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
struct TYPE_3__ {int /*<<< orphan*/ * pos; int /*<<< orphan*/ ** ht; } ;
typedef  TYPE_1__ phpdbg_intersect_ptr ;
typedef  int /*<<< orphan*/  compare_func_t ;
typedef  int /*<<< orphan*/  HashTable ;

/* Variables and functions */
 scalar_t__ phpdbg_array_data_compare ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC2(phpdbg_intersect_ptr *info, HashTable *ht1, HashTable *ht2) {
	info->ht[0] = ht1;
	info->ht[1] = ht2;

	FUNC1(info->ht[0], (compare_func_t) phpdbg_array_data_compare, 0);
	FUNC1(info->ht[1], (compare_func_t) phpdbg_array_data_compare, 0);

	FUNC0(info->ht[0], &info->pos[0]);
	FUNC0(info->ht[1], &info->pos[1]);
}