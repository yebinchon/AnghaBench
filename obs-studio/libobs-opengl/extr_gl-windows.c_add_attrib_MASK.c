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
struct darray {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,struct darray*,int*) ; 

__attribute__((used)) static inline void FUNC1(struct darray *list, int attrib, int val)
{
	FUNC0(sizeof(int), list, &attrib);
	FUNC0(sizeof(int), list, &val);
}