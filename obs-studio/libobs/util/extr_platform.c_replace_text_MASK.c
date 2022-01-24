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
struct dstr {int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,struct dstr*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,struct dstr*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC4 (struct dstr*,struct dstr*,size_t) ; 
 int /*<<< orphan*/  FUNC5 (struct dstr*,struct dstr*,size_t) ; 

__attribute__((used)) static void FUNC6(struct dstr *str, size_t pos, size_t len,
			 const char *new_text)
{
	struct dstr front = {0};
	struct dstr back = {0};

	FUNC4(&front, str, pos);
	FUNC5(&back, str, pos + len);
	FUNC2(str, &front);
	FUNC0(str, new_text);
	FUNC1(str, &back);
	FUNC3(&front);
	FUNC3(&back);
}