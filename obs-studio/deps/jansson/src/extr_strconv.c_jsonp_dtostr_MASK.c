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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*,size_t) ; 
 int FUNC2 (char*,size_t,char*,int,double) ; 
 char* FUNC3 (char*,char) ; 

int FUNC4(char *buffer, size_t size, double value, int precision)
{
    int ret;
    char *start, *end;
    size_t length;

    if (precision == 0)
        precision = 17;

    ret = FUNC2(buffer, size, "%.*g", precision, value);
    if(ret < 0)
        return -1;

    length = (size_t)ret;
    if(length >= size)
        return -1;

#if JSON_HAVE_LOCALECONV
    from_locale(buffer);
#endif

    /* Make sure there's a dot or 'e' in the output. Otherwise
       a real is converted to an integer when decoding */
    if(FUNC3(buffer, '.') == NULL &&
       FUNC3(buffer, 'e') == NULL)
    {
        if(length + 3 >= size) {
            /* No space to append ".0" */
            return -1;
        }
        buffer[length] = '.';
        buffer[length + 1] = '0';
        buffer[length + 2] = '\0';
        length += 2;
    }

    /* Remove leading '+' from positive exponent. Also remove leading
       zeros from exponents (added by some printf() implementations) */
    start = FUNC3(buffer, 'e');
    if(start) {
        start++;
        end = start + 1;

        if(*start == '-')
            start++;

        while(*end == '0')
            end++;

        if(end != start) {
            FUNC1(start, end, length - (size_t)(end - buffer));
            length -= (size_t)(end - start);
        }
    }

    return (int)length;
}