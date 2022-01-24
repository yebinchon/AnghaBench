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
struct TYPE_3__ {int /*<<< orphan*/ * k; } ;
typedef  TYPE_1__ Proto ;

/* Variables and functions */
 size_t FUNC0 (int) ; 
 scalar_t__ FUNC1 (int) ; 
 char const* FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static const char *FUNC4 (Proto *p, int c) {
  if (FUNC1(c) && FUNC3(&p->k[FUNC0(c)]))
    return FUNC2(&p->k[FUNC0(c)]);
  else
    return "?";
}