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
struct TYPE_3__ {scalar_t__ res; int /*<<< orphan*/  cs; } ;
typedef  scalar_t__ SRes ;
typedef  TYPE_1__ CMtCoder ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ SZ_OK ; 

__attribute__((used)) static void FUNC2(CMtCoder* p, SRes res)
{
  FUNC0(&p->cs);
  if (p->res == SZ_OK)
    p->res = res;
  FUNC1(&p->cs);
}