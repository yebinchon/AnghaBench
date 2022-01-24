#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  char zval ;
typedef  int zend_bool ;
struct TYPE_7__ {char zv; int /*<<< orphan*/  ht; } ;
struct TYPE_8__ {int flags; int /*<<< orphan*/ * parent_container; TYPE_1__ backup; int /*<<< orphan*/  str; struct TYPE_8__* child; int /*<<< orphan*/  name_in_parent; } ;
typedef  TYPE_2__ phpdbg_watch_element ;
typedef  int /*<<< orphan*/  HashTable ;
typedef  int /*<<< orphan*/  Bucket ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (char*) ; 
 int HT_WATCH_OFFSET ; 
 scalar_t__ IS_INDIRECT ; 
 int PHPDBG_WATCH_ARRAY ; 
 int PHPDBG_WATCH_IMPLICIT ; 
 int PHPDBG_WATCH_OBJECT ; 
 int /*<<< orphan*/  WATCH_ON_HASHTABLE ; 
 int /*<<< orphan*/  WATCH_ON_ZVAL ; 
 char* FUNC1 (char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC6 (char*,TYPE_2__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*) ; 
 char* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

zend_bool FUNC11(zval *parent, phpdbg_watch_element *element) {
	zval *zv;
	HashTable *ht = FUNC0(parent);

	if (!ht) {
		return 0;
	} else if (element->flags & (PHPDBG_WATCH_ARRAY | PHPDBG_WATCH_OBJECT)) {
		char *htPtr = ((char *) ht) + HT_WATCH_OFFSET;
		char *oldPtr = ((char *) &element->backup.ht) + HT_WATCH_OFFSET;
		if (FUNC7(WATCH_ON_HASHTABLE, oldPtr, htPtr)) {
			FUNC8(WATCH_ON_HASHTABLE, element->str, oldPtr, htPtr);
		}

		FUNC6(parent, element);
	} else if ((zv = FUNC10(ht, element->name_in_parent))) {
		if (element->flags & PHPDBG_WATCH_IMPLICIT) {
			zval *next = zv;

			while (FUNC4(next) == IS_INDIRECT) {
				next = FUNC1(next);
			}
			if (FUNC2(next)) {
				next = FUNC3(next);
			}

			if (!FUNC11(next, element->child)) {
				return 0;
			}
		} else if (FUNC7(WATCH_ON_ZVAL, &element->backup.zv, zv)) {
			FUNC8(WATCH_ON_ZVAL, element->str, &element->backup.zv, zv);
		}

		element->parent_container = ht;
		FUNC5((Bucket *) zv, element);
		FUNC9(element);
	} else {
		return 0;
	}

	return 1;
}