#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  scalar_t__ ut64 ;
struct TYPE_9__ {scalar_t__ word_size; int /*<<< orphan*/  db; TYPE_3__* _selrefs; TYPE_2__* core; TYPE_1__* _const; } ;
struct TYPE_8__ {scalar_t__ vsize; scalar_t__ vaddr; } ;
struct TYPE_7__ {int /*<<< orphan*/  io; } ;
struct TYPE_6__ {scalar_t__ vsize; scalar_t__ vaddr; } ;
typedef  TYPE_4__ RCoreObjc ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/ * FUNC1 (int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool FUNC6(RCoreObjc *objc) {
	ut64 off;
	if (!objc->_const || !objc->_selrefs) {
		return false;
	}
	
	ut8 *buf = FUNC1 (1, objc->_const->vsize);
	if (!buf) {
		return false;
	}
	(void)FUNC3 (objc->core->io, objc->_const->vaddr, buf, objc->_const->vsize);
	for (off = 0; off + 8 < objc->_const->vsize; off += objc->word_size) {
		ut64 va = objc->_const->vaddr + off;
		ut64 xrefs_to = FUNC4 (buf + off);
		if (!xrefs_to) {
			continue;
		}
		FUNC5 (objc->db, FUNC0 (va), xrefs_to, 0);
	}
	FUNC2 (buf);

	buf = FUNC1 (1, objc->_selrefs->vsize);
	if (!buf) {
		return false;
	}
	FUNC3 (objc->core->io, objc->_selrefs->vaddr, buf, objc->_selrefs->vsize);
	for (off = 0; off + 8 < objc->_selrefs->vsize; off += objc->word_size) {
		ut64 va = objc->_selrefs->vaddr + off;
		ut64 xrefs_to = FUNC4 (buf + off);
		if (!xrefs_to) {
			continue;
		}
		FUNC5 (objc->db, FUNC0 (xrefs_to), va, 0);
	}
	FUNC2 (buf);
	return true;
}