#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int fp_type; size_t manifest_pos; TYPE_2__* phar; int /*<<< orphan*/  is_persistent; } ;
typedef  TYPE_3__ phar_entry_info ;
typedef  enum phar_fp_type { ____Placeholder_phar_fp_type } phar_fp_type ;
struct TYPE_9__ {TYPE_1__* manifest; } ;
struct TYPE_7__ {size_t phar_pos; } ;
struct TYPE_6__ {int fp_type; } ;

/* Variables and functions */
 TYPE_5__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cached_fp ; 

__attribute__((used)) static inline enum phar_fp_type FUNC1(phar_entry_info *entry)
{
	if (!entry->is_persistent) {
		return entry->fp_type;
	}
	return FUNC0(cached_fp)[entry->phar->phar_pos].manifest[entry->manifest_pos].fp_type;
}