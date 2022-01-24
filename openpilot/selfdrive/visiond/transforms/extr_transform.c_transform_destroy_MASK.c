#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  krnl; int /*<<< orphan*/  m_uv_cl; int /*<<< orphan*/  m_y_cl; } ;
typedef  TYPE_1__ Transform ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ) ; 

void FUNC3(Transform* s) {
  int err = 0;

  err = FUNC2(s->m_y_cl);
  FUNC0(err == 0);
  err = FUNC2(s->m_uv_cl);
  FUNC0(err == 0);

  err = FUNC1(s->krnl);
  FUNC0(err == 0);
}