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
 int /*<<< orphan*/  FUNC0 (char*,unsigned int) ; 
 unsigned long FUNC1 (unsigned char const*) ; 
 unsigned long FUNC2 (unsigned char const*) ; 

__attribute__((used)) static unsigned long FUNC3(const unsigned char* ptr, unsigned word_size)
{
    unsigned long ret;

    switch (word_size)
    {
    case 4:
        ret = FUNC1(ptr);
        break;
    case 8:
        ret = FUNC2(ptr);
	break;
    default:
        FUNC0("Unsupported Word Size %u\n", word_size);
        ret = 0;
    }
    return ret;
}