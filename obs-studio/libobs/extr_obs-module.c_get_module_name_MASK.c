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
struct dstr {char* array; scalar_t__ len; int /*<<< orphan*/  member_0; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,scalar_t__) ; 
 char* FUNC2 () ; 
 size_t FUNC3 (char const*) ; 

__attribute__((used)) static inline char *FUNC4(const char *file)
{
	static size_t ext_len = 0;
	struct dstr name = {0};

	if (ext_len == 0) {
		const char *ext = FUNC2();
		ext_len = FUNC3(ext);
	}

	FUNC0(&name, file);
	FUNC1(&name, name.len - ext_len);
	return name.array;
}