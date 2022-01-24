#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zval ;
typedef  int /*<<< orphan*/  zend_long ;
struct TYPE_4__ {scalar_t__ used; scalar_t__ size; } ;
struct TYPE_5__ {int flags; TYPE_1__ buffer; scalar_t__ size; scalar_t__ level; int /*<<< orphan*/  name; } ;
typedef  TYPE_2__ php_output_handler ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline zval *FUNC5(php_output_handler *handler, zval *entry)
{
	FUNC0(entry != NULL);

	FUNC3(entry);
	FUNC2(entry, "name", FUNC4(handler->name));
	FUNC1(entry, "type", (zend_long) (handler->flags & 0xf));
	FUNC1(entry, "flags", (zend_long) handler->flags);
	FUNC1(entry, "level", (zend_long) handler->level);
	FUNC1(entry, "chunk_size", (zend_long) handler->size);
	FUNC1(entry, "buffer_size", (zend_long) handler->buffer.size);
	FUNC1(entry, "buffer_used", (zend_long) handler->buffer.used);

	return entry;
}