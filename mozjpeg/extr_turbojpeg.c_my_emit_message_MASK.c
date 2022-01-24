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
typedef  TYPE_1__* my_error_ptr ;
typedef  TYPE_2__* j_common_ptr ;
struct TYPE_6__ {int /*<<< orphan*/  err; } ;
struct TYPE_5__ {int /*<<< orphan*/  setjmp_buffer; scalar_t__ stopOnWarning; int /*<<< orphan*/  warning; int /*<<< orphan*/  (* emit_message ) (TYPE_2__*,int) ;} ;

/* Variables and functions */
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int) ; 

__attribute__((used)) static void FUNC2(j_common_ptr cinfo, int msg_level)
{
	my_error_ptr myerr=(my_error_ptr)cinfo->err;

	myerr->emit_message(cinfo, msg_level);
  if (msg_level < 0) {
    myerr->warning = TRUE;
    if (myerr->stopOnWarning) FUNC0(myerr->setjmp_buffer, 1);
  }
}