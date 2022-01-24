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
typedef  int /*<<< orphan*/  obs_key_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct dstr*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct dstr*,struct dstr*) ; 
 int /*<<< orphan*/  FUNC2 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC3 (struct dstr*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct dstr*) ; 

__attribute__((used)) static inline void FUNC5(obs_key_t key, struct dstr *str)
{
	struct dstr key_str = {0};

	FUNC4(key, &key_str);

	if (!FUNC3(&key_str)) {
		if (!FUNC3(str)) {
			FUNC0(str, " + ");
		}
		FUNC1(str, &key_str);
	}

	FUNC2(&key_str);
}