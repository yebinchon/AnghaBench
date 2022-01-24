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
 int /*<<< orphan*/  FUNC0 (char*,char const*,char*,char*) ; 
 scalar_t__ FUNC1 (char const*,char*,int) ; 
 long double FUNC2 (char*,char**) ; 

__attribute__((used)) static unsigned long long int FUNC3(const char *filename) {
    char buffer[50 + 1];
    if(FUNC1(filename, buffer, 50) == 0) {
        static int unknown_units_error = 10;

        char *end = NULL;
        long double value = FUNC2(buffer, &end);
        if(end && *end) {
            if(*end == 'k')
                return (unsigned long long int)(value * 1024.0);
            else if(*end == 'M')
                return (unsigned long long int)(value * 1024.0 * 1024.0);
            else if(*end == 'G')
                return (unsigned long long int)(value * 1024.0 * 1024.0 * 1024.0);
            else if(*end == 'T')
                return (unsigned long long int)(value * 1024.0 * 1024.0 * 1024.0 * 1024.0);
            else if(unknown_units_error > 0) {
                FUNC0("bcache file '%s' provides value '%s' with unknown units '%s'", filename, buffer, end);
                unknown_units_error--;
            }
        }

        return (unsigned long long int)value;
    }

    return 0;
}