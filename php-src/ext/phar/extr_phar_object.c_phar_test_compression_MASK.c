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
typedef  int /*<<< orphan*/  zval ;
struct TYPE_2__ {int flags; scalar_t__ is_deleted; } ;
typedef  TYPE_1__ phar_entry_info ;

/* Variables and functions */
 int PHAR_ENT_COMPRESSED_BZ2 ; 
 int PHAR_ENT_COMPRESSED_GZ ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int ZEND_HASH_APPLY_KEEP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  has_bz2 ; 
 int /*<<< orphan*/  has_zlib ; 

__attribute__((used)) static int FUNC2(zval *zv, void *argument) /* {{{ */
{
	phar_entry_info *entry = (phar_entry_info *)FUNC1(zv);

	if (entry->is_deleted) {
		return ZEND_HASH_APPLY_KEEP;
	}

	if (!FUNC0(has_bz2)) {
		if (entry->flags & PHAR_ENT_COMPRESSED_BZ2) {
			*(int *) argument = 0;
		}
	}

	if (!FUNC0(has_zlib)) {
		if (entry->flags & PHAR_ENT_COMPRESSED_GZ) {
			*(int *) argument = 0;
		}
	}

	return ZEND_HASH_APPLY_KEEP;
}