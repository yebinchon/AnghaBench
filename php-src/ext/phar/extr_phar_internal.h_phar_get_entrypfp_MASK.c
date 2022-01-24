#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  php_stream ;
struct TYPE_6__ {TYPE_1__* phar; int /*<<< orphan*/  is_persistent; } ;
typedef  TYPE_2__ phar_entry_info ;
struct TYPE_7__ {int /*<<< orphan*/ * fp; } ;
struct TYPE_5__ {size_t phar_pos; int /*<<< orphan*/ * fp; } ;

/* Variables and functions */
 TYPE_4__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cached_fp ; 

__attribute__((used)) static inline php_stream *FUNC1(phar_entry_info *entry)
{
	if (!entry->is_persistent) {
		return entry->phar->fp;
	}
	return FUNC0(cached_fp)[entry->phar->phar_pos].fp;
}