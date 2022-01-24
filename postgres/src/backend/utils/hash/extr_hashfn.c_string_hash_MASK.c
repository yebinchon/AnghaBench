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
typedef  int /*<<< orphan*/  uint32 ;
typedef  scalar_t__ Size ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char const*,int) ; 
 scalar_t__ FUNC3 (char const*) ; 

uint32
FUNC4(const void *key, Size keysize)
{
	/*
	 * If the string exceeds keysize-1 bytes, we want to hash only that many,
	 * because when it is copied into the hash table it will be truncated at
	 * that length.
	 */
	Size		s_len = FUNC3((const char *) key);

	s_len = FUNC1(s_len, keysize - 1);
	return FUNC0(FUNC2((const unsigned char *) key,
								   (int) s_len));
}