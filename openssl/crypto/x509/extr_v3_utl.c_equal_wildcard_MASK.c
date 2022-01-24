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
 int FUNC0 (unsigned char const*,size_t,unsigned char const*,size_t,unsigned int) ; 
 unsigned char* FUNC1 (unsigned char const*,size_t,unsigned int) ; 
 int FUNC2 (unsigned char const*,int,unsigned char const*,int,unsigned char const*,size_t,unsigned int) ; 

__attribute__((used)) static int FUNC3(const unsigned char *pattern, size_t pattern_len,
                          const unsigned char *subject, size_t subject_len,
                          unsigned int flags)
{
    const unsigned char *star = NULL;

    /*
     * Subject names starting with '.' can only match a wildcard pattern
     * via a subject sub-domain pattern suffix match.
     */
    if (!(subject_len > 1 && subject[0] == '.'))
        star = FUNC1(pattern, pattern_len, flags);
    if (star == NULL)
        return FUNC0(pattern, pattern_len,
                            subject, subject_len, flags);
    return FUNC2(pattern, star - pattern,
                          star + 1, (pattern + pattern_len) - star - 1,
                          subject, subject_len, flags);
}