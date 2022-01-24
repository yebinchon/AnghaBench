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
struct dstr {scalar_t__ array; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,struct dstr*,size_t) ; 

__attribute__((used)) static void FUNC3(struct dstr *str, size_t pos)
{
	struct dstr new_str = {0};
	FUNC2(&new_str, str, pos);
	FUNC0(&new_str, str->array + pos + 1);
	FUNC1(str);
	*str = new_str;
}