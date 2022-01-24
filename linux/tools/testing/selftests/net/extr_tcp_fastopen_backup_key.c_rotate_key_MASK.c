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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  KEY_LENGTH ; 
 int N_LISTEN ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(int fd)
{
	static int iter;
	static uint32_t new_key[4];
	uint32_t keys[8];
	uint32_t tmp_key[4];
	int i;

	if (iter < N_LISTEN) {
		/* first set new key as backups */
		if (iter == 0) {
			for (i = 0; i < FUNC0(new_key); i++)
				new_key[i] = FUNC3();
		}
		FUNC1(fd, keys);
		FUNC2(keys + 4, new_key, KEY_LENGTH);
		FUNC4(fd, keys);
	} else {
		/* swap the keys */
		FUNC1(fd, keys);
		FUNC2(tmp_key, keys + 4, KEY_LENGTH);
		FUNC2(keys + 4, keys, KEY_LENGTH);
		FUNC2(keys, tmp_key, KEY_LENGTH);
		FUNC4(fd, keys);
	}
	if (++iter >= (N_LISTEN * 2))
		iter = 0;
}