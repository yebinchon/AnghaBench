#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_4__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ut8 ;
typedef  scalar_t__ ut64 ;
struct TYPE_9__ {int /*<<< orphan*/  name; scalar_t__ name_addr; scalar_t__ vtable_addr; } ;
typedef  TYPE_2__ class_type_info ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_8__ {int /*<<< orphan*/  io; int /*<<< orphan*/  (* read_at ) (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ;} ;
struct TYPE_11__ {TYPE_1__ iob; } ;
struct TYPE_10__ {scalar_t__ word_size; TYPE_4__* anal; int /*<<< orphan*/  (* read_addr ) (TYPE_4__*,scalar_t__,scalar_t__*) ;} ;
typedef  TYPE_3__ RVTableContext ;

/* Variables and functions */
 int NAME_BUF_SIZE ; 
 scalar_t__ UT64_MAX ; 
 int /*<<< orphan*/  FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int FUNC2 (char const*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static bool FUNC6 (RVTableContext *context, ut64 addr, class_type_info *cti) {
	ut64 at;
	if (addr == UT64_MAX) {
		return false;
	}
	if (!context->read_addr (context->anal, addr, &at)) {
		return false;
	}
	cti->vtable_addr = at;
	if (!context->read_addr (context->anal, addr + context->word_size, &at)) {
		return false;
	}
	cti->name_addr = at;
	ut8 buf[NAME_BUF_SIZE];
	if (!context->anal->iob.read_at (context->anal->iob.io, at, buf, sizeof(buf))) {
		return false;
	}
	size_t name_len = FUNC2 ((const char *)buf) + 1;
	cti->name = FUNC0 (name_len);
	if (!cti->name) {
		return false;
	}
	FUNC1 (cti->name, buf, name_len);
	return true;
}