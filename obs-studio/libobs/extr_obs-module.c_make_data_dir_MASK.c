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
struct dstr {scalar_t__ len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,char const*) ; 
 char FUNC1 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*,scalar_t__) ; 

__attribute__((used)) static inline void FUNC4(struct dstr *parsed_data_dir,
				 const char *data_dir, const char *name)
{
	FUNC0(parsed_data_dir, data_dir);
	FUNC2(parsed_data_dir, "%module%", name);
	if (FUNC1(parsed_data_dir) == '/')
		FUNC3(parsed_data_dir, parsed_data_dir->len - 1);
}