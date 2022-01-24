#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
struct TYPE_2__ {int /*<<< orphan*/  coll_id; int /*<<< orphan*/  hash; } ;
typedef  int /*<<< orphan*/  Size ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* array_extra_data ; 

__attribute__((used)) static uint32
FUNC2(const void *key, Size keysize)
{
	Datum		d = *((const Datum *) key);
	Datum		h;

	h = FUNC1(array_extra_data->hash,
						  array_extra_data->coll_id,
						  d);
	return FUNC0(h);
}