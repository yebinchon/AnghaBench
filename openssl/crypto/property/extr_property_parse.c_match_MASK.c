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
 char* FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,char const*,size_t) ; 

__attribute__((used)) static int FUNC2(const char *t[], const char m[], size_t m_len)
{
    const char *s = *t;

    if (FUNC1(s, m, m_len) == 0) {
        *t = FUNC0(s + m_len);
        return 1;
    }
    return 0;
}