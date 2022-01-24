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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  RRDR_GROUPING ;

/* Variables and functions */
 int /*<<< orphan*/  D_HEALTH ; 
 char* HEALTH_EVERY_KEY ; 
 char* HEALTH_FOREACH_KEY ; 
 int /*<<< orphan*/  RRDR_GROUPING_UNDEFINED ; 
 int /*<<< orphan*/  RRDR_OPTION_ABSOLUTE ; 
 int /*<<< orphan*/  RRDR_OPTION_MATCH_IDS ; 
 int /*<<< orphan*/  RRDR_OPTION_MATCH_NAMES ; 
 int /*<<< orphan*/  RRDR_OPTION_MIN2MAX ; 
 int /*<<< orphan*/  RRDR_OPTION_NOT_ALIGNED ; 
 int /*<<< orphan*/  RRDR_OPTION_NULL2ZERO ; 
 int /*<<< orphan*/  RRDR_OPTION_PERCENTAGE ; 
 int FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*,int*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,size_t,char const*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,char const*,char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 char* FUNC7 (char*,char*) ; 
 char* FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline int FUNC10(
        size_t line, const char *filename, char *string,
        RRDR_GROUPING *group_method, int *after, int *before, int *every,
        uint32_t *options, char **dimensions, char **foreachdim
) {
    FUNC2(D_HEALTH, "Health configuration parsing database lookup %zu@%s: %s", line, filename, string);

    if(*dimensions) FUNC4(*dimensions);
    if(*foreachdim) FUNC4(*foreachdim);
    *dimensions = NULL;
    *foreachdim = NULL;
    *after = 0;
    *before = 0;
    *every = 0;
    *options = 0;

    char *s = string, *key;

    // first is the group method
    key = s;
    while(*s && !FUNC5(*s)) s++;
    while(*s && FUNC5(*s)) *s++ = '\0';
    if(!*s) {
        FUNC3("Health configuration invalid chart calculation at line %zu of file '%s': expected group method followed by the 'after' time, but got '%s'",
                line, filename, key);
        return 0;
    }

    if((*group_method = FUNC9(key, RRDR_GROUPING_UNDEFINED)) == RRDR_GROUPING_UNDEFINED) {
        FUNC3("Health configuration at line %zu of file '%s': invalid group method '%s'",
                line, filename, key);
        return 0;
    }

    // then is the 'after' time
    key = s;
    while(*s && !FUNC5(*s)) s++;
    while(*s && FUNC5(*s)) *s++ = '\0';

    if(!FUNC1(key, after)) {
        FUNC3("Health configuration at line %zu of file '%s': invalid duration '%s' after group method",
                line, filename, key);
        return 0;
    }

    // sane defaults
    *every = FUNC0(*after);

    // now we may have optional parameters
    while(*s) {
        key = s;
        while(*s && !FUNC5(*s)) s++;
        while(*s && FUNC5(*s)) *s++ = '\0';
        if(!*key) break;

        if(!FUNC6(key, "at")) {
            char *value = s;
            while(*s && !FUNC5(*s)) s++;
            while(*s && FUNC5(*s)) *s++ = '\0';

            if (!FUNC1(value, before)) {
                FUNC3("Health configuration at line %zu of file '%s': invalid duration '%s' for '%s' keyword",
                        line, filename, value, key);
            }
        }
        else if(!FUNC6(key, HEALTH_EVERY_KEY)) {
            char *value = s;
            while(*s && !FUNC5(*s)) s++;
            while(*s && FUNC5(*s)) *s++ = '\0';

            if (!FUNC1(value, every)) {
                FUNC3("Health configuration at line %zu of file '%s': invalid duration '%s' for '%s' keyword",
                        line, filename, value, key);
            }
        }
        else if(!FUNC6(key, "absolute") || !FUNC6(key, "abs") || !FUNC6(key, "absolute_sum")) {
            *options |= RRDR_OPTION_ABSOLUTE;
        }
        else if(!FUNC6(key, "min2max")) {
            *options |= RRDR_OPTION_MIN2MAX;
        }
        else if(!FUNC6(key, "null2zero")) {
            *options |= RRDR_OPTION_NULL2ZERO;
        }
        else if(!FUNC6(key, "percentage")) {
            *options |= RRDR_OPTION_PERCENTAGE;
        }
        else if(!FUNC6(key, "unaligned")) {
            *options |= RRDR_OPTION_NOT_ALIGNED;
        }
        else if(!FUNC6(key, "match-ids") || !FUNC6(key, "match_ids")) {
            *options |= RRDR_OPTION_MATCH_IDS;
        }
        else if(!FUNC6(key, "match-names") || !FUNC6(key, "match_names")) {
            *options |= RRDR_OPTION_MATCH_NAMES;
        }
        else if(!FUNC6(key, "of")) {
            char *find = NULL;
            if(*s && FUNC6(s, "all") != 0) {
                find = FUNC7(s, " foreach");
                if(find) {
                    *find = '\0';
                }
                *dimensions = FUNC8(s);
            }

            if(!find) {
                break;
            }
            s = ++find;
        }
        else if(!FUNC6(key, HEALTH_FOREACH_KEY )) {
            *foreachdim = FUNC8(s);
            break;
        }
        else {
            FUNC3("Health configuration at line %zu of file '%s': unknown keyword '%s'",
                    line, filename, key);
        }
    }

    return 1;
}