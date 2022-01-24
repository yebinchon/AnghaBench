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
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (char) ; 
 scalar_t__ FUNC3 (int) ; 
 char FUNC4 (char*,char*,char*) ; 
 char FUNC5 (char*) ; 
 int FUNC6 (unsigned char*) ; 

char *FUNC7(char *to, char *url, size_t size) {
    char *s = url,           // source
         *d = to,            // destination
         *e = &to[size - 1]; // destination end

    while(*s && d < e) {
        if(FUNC3(*s == '%')) {
            char t = FUNC5(s);
            if(FUNC0(t)) {
                char bytes_written = FUNC4(s, d, e);
                if(FUNC2(bytes_written)){
                    d += bytes_written;
                    s += (bytes_written * 3)-1;
                }
                else {
                    goto fail_cleanup;
                }
            }
            else if(FUNC2(t) && FUNC1(t)) {
                // avoid HTTP header injection
                *d++ = t;
                s += 2;
            }
            else
                goto fail_cleanup;
        }
        else if(FUNC3(*s == '+'))
            *d++ = ' ';

        else
            *d++ = *s;

        s++;
    }

    *d = '\0';

    if(FUNC3( FUNC6((unsigned  char *)to) )) //NULL means sucess here
        return NULL;

    return to;

fail_cleanup:
    *d = '\0';
    return NULL;
}