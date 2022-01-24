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
 int /*<<< orphan*/  FUNC0 (char*,int*) ; 
 int /*<<< orphan*/  FUNC1 (char*,size_t,char const*,char*,...) ; 
 scalar_t__ FUNC2 (float) ; 
 scalar_t__ FUNC3 (float,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (float) ; 
 scalar_t__ FUNC5 (char) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 float FUNC7 (char*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static inline int FUNC8(
        size_t line, const char *filename, char *string,
        int *delay_up_duration,
        int *delay_down_duration,
        int *delay_max_duration,
        float *delay_multiplier) {

    char given_up = 0;
    char given_down = 0;
    char given_max = 0;
    char given_multiplier = 0;

    char *s = string;
    while(*s) {
        char *key = s;

        while(*s && !FUNC5(*s)) s++;
        while(*s && FUNC5(*s)) *s++ = '\0';

        if(!*key) break;

        char *value = s;
        while(*s && !FUNC5(*s)) s++;
        while(*s && FUNC5(*s)) *s++ = '\0';

        if(!FUNC6(key, "up")) {
            if (!FUNC0(value, delay_up_duration)) {
                FUNC1("Health configuration at line %zu of file '%s': invalid value '%s' for '%s' keyword",
                        line, filename, value, key);
            }
            else given_up = 1;
        }
        else if(!FUNC6(key, "down")) {
            if (!FUNC0(value, delay_down_duration)) {
                FUNC1("Health configuration at line %zu of file '%s': invalid value '%s' for '%s' keyword",
                        line, filename, value, key);
            }
            else given_down = 1;
        }
        else if(!FUNC6(key, "multiplier")) {
            *delay_multiplier = FUNC7(value, NULL);
            if(FUNC4(*delay_multiplier) || FUNC2(*delay_multiplier) || FUNC3(*delay_multiplier, 0)) {
                FUNC1("Health configuration at line %zu of file '%s': invalid value '%s' for '%s' keyword",
                        line, filename, value, key);
            }
            else given_multiplier = 1;
        }
        else if(!FUNC6(key, "max")) {
            if (!FUNC0(value, delay_max_duration)) {
                FUNC1("Health configuration at line %zu of file '%s': invalid value '%s' for '%s' keyword",
                        line, filename, value, key);
            }
            else given_max = 1;
        }
        else {
            FUNC1("Health configuration at line %zu of file '%s': unknown keyword '%s'",
                    line, filename, key);
        }
    }

    if(!given_up)
        *delay_up_duration = 0;

    if(!given_down)
        *delay_down_duration = 0;

    if(!given_multiplier)
        *delay_multiplier = 1.0;

    if(!given_max) {
        if((*delay_max_duration) < (*delay_up_duration) * (*delay_multiplier))
            *delay_max_duration = (int)((*delay_up_duration) * (*delay_multiplier));

        if((*delay_max_duration) < (*delay_down_duration) * (*delay_multiplier))
            *delay_max_duration = (int)((*delay_down_duration) * (*delay_multiplier));
    }

    return 1;
}