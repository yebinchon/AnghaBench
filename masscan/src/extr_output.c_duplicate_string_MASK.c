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
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char const*,size_t) ; 
 size_t FUNC2 (char const*) ; 

__attribute__((used)) static char *
FUNC3(const char *str)
{
    size_t length;
    char *result;

    /* Find the length of the string. We allow NULL strings, in which case
     * the length is zero */
    if (str == NULL)
        length = 0;
    else
        length = FUNC2(str);

    /* Allocate memory for the string */
    result = FUNC0(length + 1);
    

    /* Copy the string */
    if (str)
        FUNC1(result, str, length+1);
    result[length] = '\0';

    return result;
}