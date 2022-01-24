#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  zend_resource ;
struct TYPE_6__ {scalar_t__ refcount; TYPE_1__* stream; int /*<<< orphan*/ * res; } ;
typedef  TYPE_2__ php_istream ;
struct TYPE_5__ {int /*<<< orphan*/ * res; } ;
typedef  int /*<<< orphan*/  IUnknown ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(php_istream *stm)
{
	if (stm->res) {
		zend_resource *res = stm->res;
		stm->res = NULL;
		FUNC2(res);
		return;
	}

	if (stm->refcount > 0) {
		FUNC0((IUnknown*)stm, 0);
	}

	FUNC2(stm->stream->res);

	FUNC1(stm);
}