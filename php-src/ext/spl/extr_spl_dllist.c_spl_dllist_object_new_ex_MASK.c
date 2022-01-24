#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_44__   TYPE_9__ ;
typedef  struct TYPE_43__   TYPE_8__ ;
typedef  struct TYPE_42__   TYPE_7__ ;
typedef  struct TYPE_41__   TYPE_6__ ;
typedef  struct TYPE_40__   TYPE_5__ ;
typedef  struct TYPE_39__   TYPE_4__ ;
typedef  struct TYPE_38__   TYPE_3__ ;
typedef  struct TYPE_37__   TYPE_2__ ;
typedef  struct TYPE_36__   TYPE_1__ ;
typedef  struct TYPE_35__   TYPE_14__ ;
typedef  struct TYPE_34__   TYPE_13__ ;
typedef  struct TYPE_33__   TYPE_12__ ;
typedef  struct TYPE_32__   TYPE_11__ ;
typedef  struct TYPE_31__   TYPE_10__ ;

/* Type definitions */
struct TYPE_32__ {int /*<<< orphan*/ * handlers; } ;
typedef  TYPE_11__ zend_object ;
struct TYPE_33__ {int /*<<< orphan*/  function_table; struct TYPE_33__* parent; } ;
typedef  TYPE_12__ zend_class_entry ;
struct TYPE_34__ {int /*<<< orphan*/  head; int /*<<< orphan*/  dtor; int /*<<< orphan*/  ctor; } ;
typedef  TYPE_13__ spl_ptr_llist ;
struct TYPE_35__ {int flags; TYPE_11__ std; TYPE_10__* fptr_count; TYPE_8__* fptr_offset_del; TYPE_6__* fptr_offset_has; TYPE_4__* fptr_offset_set; TYPE_2__* fptr_offset_get; int /*<<< orphan*/  traverse_pointer; TYPE_13__* llist; int /*<<< orphan*/  ce_get_iterator; scalar_t__ traverse_position; } ;
typedef  TYPE_14__ spl_dllist_object ;
struct TYPE_44__ {TYPE_12__* scope; } ;
struct TYPE_42__ {TYPE_12__* scope; } ;
struct TYPE_43__ {TYPE_7__ common; } ;
struct TYPE_40__ {TYPE_12__* scope; } ;
struct TYPE_41__ {TYPE_5__ common; } ;
struct TYPE_38__ {TYPE_12__* scope; } ;
struct TYPE_39__ {TYPE_3__ common; } ;
struct TYPE_36__ {TYPE_12__* scope; } ;
struct TYPE_37__ {TYPE_1__ common; } ;
struct TYPE_31__ {TYPE_9__ common; } ;

/* Variables and functions */
 int /*<<< orphan*/  E_COMPILE_ERROR ; 
 int SPL_DLLIST_IT_FIX ; 
 int SPL_DLLIST_IT_LIFO ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_11__*,TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 TYPE_12__* spl_ce_SplDoublyLinkedList ; 
 TYPE_12__* spl_ce_SplQueue ; 
 TYPE_12__* spl_ce_SplStack ; 
 TYPE_14__* FUNC3 (TYPE_11__*) ; 
 int /*<<< orphan*/  spl_handler_SplDoublyLinkedList ; 
 int /*<<< orphan*/  FUNC4 (TYPE_13__*,TYPE_13__*) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  spl_ptr_llist_zval_ctor ; 
 int /*<<< orphan*/  spl_ptr_llist_zval_dtor ; 
 void* FUNC6 (int /*<<< orphan*/ *,char*,int) ; 
 TYPE_14__* FUNC7 (int,TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_11__*,TYPE_12__*) ; 

__attribute__((used)) static zend_object *FUNC9(zend_class_entry *class_type, zend_object *orig, int clone_orig) /* {{{ */
{
	spl_dllist_object *intern;
	zend_class_entry  *parent = class_type;
	int                inherited = 0;

	intern = FUNC7(sizeof(spl_dllist_object), parent);

	FUNC8(&intern->std, class_type);
	FUNC1(&intern->std, class_type);

	intern->flags = 0;
	intern->traverse_position = 0;

	if (orig) {
		spl_dllist_object *other = FUNC3(orig);
		intern->ce_get_iterator = other->ce_get_iterator;

		if (clone_orig) {
			intern->llist = (spl_ptr_llist *)FUNC5(other->llist->ctor, other->llist->dtor);
			FUNC4(other->llist, intern->llist);
			intern->traverse_pointer  = intern->llist->head;
			FUNC0(intern->traverse_pointer);
		} else {
			intern->llist = other->llist;
			intern->traverse_pointer  = intern->llist->head;
			FUNC0(intern->traverse_pointer);
		}

		intern->flags = other->flags;
	} else {
		intern->llist = (spl_ptr_llist *)FUNC5(spl_ptr_llist_zval_ctor, spl_ptr_llist_zval_dtor);
		intern->traverse_pointer  = intern->llist->head;
		FUNC0(intern->traverse_pointer);
	}

	while (parent) {
		if (parent == spl_ce_SplStack) {
			intern->flags |= (SPL_DLLIST_IT_FIX | SPL_DLLIST_IT_LIFO);
			intern->std.handlers = &spl_handler_SplDoublyLinkedList;
		} else if (parent == spl_ce_SplQueue) {
			intern->flags |= SPL_DLLIST_IT_FIX;
			intern->std.handlers = &spl_handler_SplDoublyLinkedList;
		}

		if (parent == spl_ce_SplDoublyLinkedList) {
			intern->std.handlers = &spl_handler_SplDoublyLinkedList;
			break;
		}

		parent = parent->parent;
		inherited = 1;
	}

	if (!parent) { /* this must never happen */
		FUNC2(NULL, E_COMPILE_ERROR, "Internal compiler error, Class is not child of SplDoublyLinkedList");
	}
	if (inherited) {
		intern->fptr_offset_get = FUNC6(&class_type->function_table, "offsetget", sizeof("offsetget") - 1);
		if (intern->fptr_offset_get->common.scope == parent) {
			intern->fptr_offset_get = NULL;
		}
		intern->fptr_offset_set = FUNC6(&class_type->function_table, "offsetset", sizeof("offsetset") - 1);
		if (intern->fptr_offset_set->common.scope == parent) {
			intern->fptr_offset_set = NULL;
		}
		intern->fptr_offset_has = FUNC6(&class_type->function_table, "offsetexists", sizeof("offsetexists") - 1);
		if (intern->fptr_offset_has->common.scope == parent) {
			intern->fptr_offset_has = NULL;
		}
		intern->fptr_offset_del = FUNC6(&class_type->function_table, "offsetunset", sizeof("offsetunset") - 1);
		if (intern->fptr_offset_del->common.scope == parent) {
			intern->fptr_offset_del = NULL;
		}
		intern->fptr_count = FUNC6(&class_type->function_table, "count", sizeof("count") - 1);
		if (intern->fptr_count->common.scope == parent) {
			intern->fptr_count = NULL;
		}
	}

	return &intern->std;
}