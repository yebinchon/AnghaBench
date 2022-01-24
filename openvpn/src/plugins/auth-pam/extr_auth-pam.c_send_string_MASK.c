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
typedef  int ssize_t ;

/* Variables and functions */
 int FUNC0 (char const*) ; 
 int FUNC1 (int,char const*,int const) ; 

__attribute__((used)) static int
FUNC2(int fd, const char *string)
{
    const int len = FUNC0(string) + 1;
    const ssize_t size = FUNC1(fd, string, len);
    if (size == len)
    {
        return (int) size;
    }
    else
    {
        return -1;
    }
}