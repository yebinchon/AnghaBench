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
typedef  int /*<<< orphan*/  CreateOpClassItem ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  class_args ; 
 int /*<<< orphan*/  itemtype ; 
 int /*<<< orphan*/  name ; 
 int /*<<< orphan*/  number ; 
 int /*<<< orphan*/  order_family ; 
 int /*<<< orphan*/  storedtype ; 

__attribute__((used)) static bool
FUNC2(const CreateOpClassItem *a, const CreateOpClassItem *b)
{
	FUNC1(itemtype);
	FUNC0(name);
	FUNC1(number);
	FUNC0(order_family);
	FUNC0(class_args);
	FUNC0(storedtype);

	return true;
}