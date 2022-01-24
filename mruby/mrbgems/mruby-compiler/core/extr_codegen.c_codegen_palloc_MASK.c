#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  mpool; } ;
typedef  TYPE_1__ codegen_scope ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*) ; 
 void* FUNC1 (int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static void*
FUNC2(codegen_scope *s, size_t len)
{
  void *p = FUNC1(s->mpool, len);

  if (!p) FUNC0(s, "pool memory allocation");
  return p;
}