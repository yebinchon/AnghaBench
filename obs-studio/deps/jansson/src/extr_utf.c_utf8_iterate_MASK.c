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
typedef  unsigned char int32_t ;

/* Variables and functions */
 size_t FUNC0 (char const) ; 
 int /*<<< orphan*/  FUNC1 (char const*,size_t,unsigned char*) ; 

const char *FUNC2(const char *buffer, size_t bufsize, int32_t *codepoint)
{
    size_t count;
    int32_t value;

    if(!bufsize)
        return buffer;

    count = FUNC0(buffer[0]);
    if(count <= 0)
        return NULL;

    if(count == 1)
        value = (unsigned char)buffer[0];
    else
    {
        if(count > bufsize || !FUNC1(buffer, count, &value))
            return NULL;
    }

    if(codepoint)
        *codepoint = value;

    return buffer + count;
}