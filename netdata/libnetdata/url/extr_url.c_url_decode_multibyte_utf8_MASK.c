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
 int /*<<< orphan*/  FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (int) ; 
 char FUNC3 (char*) ; 
 char FUNC4 (char) ; 

char FUNC5(char *s, char *d, char *d_end) {
    char first_byte = FUNC3(s);

    if(FUNC2(!first_byte || !FUNC1(first_byte)))
        return 0;

    char byte_length = FUNC4(first_byte);

    if(FUNC2(byte_length <= 0 || d+byte_length >= d_end))
        return 0;

    char to_read = byte_length;
    while(to_read > 0) {
        char c = FUNC3(s);

        if(FUNC2( !FUNC0(c) ))
            return 0;
        if((to_read != byte_length) && FUNC1(c)) 
            return 0;

        *d++ = c;
        s+=3;
        to_read--;
    }

    return byte_length;
}