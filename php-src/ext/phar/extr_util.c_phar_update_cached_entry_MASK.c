#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
struct TYPE_3__ {int /*<<< orphan*/ * s; } ;
struct TYPE_4__ {char* filename; TYPE_1__ metadata_str; int /*<<< orphan*/  metadata; scalar_t__ metadata_len; scalar_t__ is_persistent; scalar_t__ filename_len; void* tmp; void* link; int /*<<< orphan*/ * phar; } ;
typedef  TYPE_2__ phar_entry_info ;
typedef  int /*<<< orphan*/  phar_archive_data ;

/* Variables and functions */
 scalar_t__ IS_UNDEF ; 
 int ZEND_HASH_APPLY_KEEP ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 void* FUNC4 (void*) ; 
 void* FUNC5 (char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (char**,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(zval *data, void *argument) /* {{{ */
{
	phar_entry_info *entry = (phar_entry_info *)FUNC1(data);

	entry->phar = (phar_archive_data *)argument;

	if (entry->link) {
		entry->link = FUNC4(entry->link);
	}

	if (entry->tmp) {
		entry->tmp = FUNC4(entry->tmp);
	}

	entry->metadata_str.s = NULL;
	entry->filename = FUNC5(entry->filename, entry->filename_len);
	entry->is_persistent = 0;

	if (FUNC2(entry->metadata) != IS_UNDEF) {
		if (entry->metadata_len) {
			char *buf = FUNC5((char *) FUNC0(entry->metadata), entry->metadata_len);
			/* assume success, we would have failed before */
			FUNC6((char **) &buf, &entry->metadata, entry->metadata_len);
			FUNC3(buf);
		} else {
			FUNC7(&entry->metadata);
			entry->metadata_str.s = NULL;
		}
	}
	return ZEND_HASH_APPLY_KEEP;
}