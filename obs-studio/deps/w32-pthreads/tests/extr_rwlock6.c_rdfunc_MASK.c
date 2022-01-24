#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int bankAccount ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  rwlock1 ; 

void * FUNC3(void * arg)
{
  int ba;

  FUNC0(FUNC1(&rwlock1) == 0);
  ba = bankAccount;
  FUNC0(FUNC2(&rwlock1) == 0);

  return ((void *)(size_t)ba);
}