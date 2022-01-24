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
struct TYPE_3__ {int dsize; int max_dsize; } ;
typedef  int Size ;
typedef  int /*<<< orphan*/  HASHSEGMENT ;
typedef  int /*<<< orphan*/  HASHHDR ;
typedef  TYPE_1__ HASHCTL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int HASH_DIRSIZE ; 

Size
FUNC1(HASHCTL *info, int flags)
{
	FUNC0(flags & HASH_DIRSIZE);
	FUNC0(info->dsize == info->max_dsize);
	return sizeof(HASHHDR) + info->dsize * sizeof(HASHSEGMENT);
}