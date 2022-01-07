
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int RRDR_GROUPING ;


 int D_HEALTH ;
 char* HEALTH_EVERY_KEY ;
 char* HEALTH_FOREACH_KEY ;
 int RRDR_GROUPING_UNDEFINED ;
 int RRDR_OPTION_ABSOLUTE ;
 int RRDR_OPTION_MATCH_IDS ;
 int RRDR_OPTION_MATCH_NAMES ;
 int RRDR_OPTION_MIN2MAX ;
 int RRDR_OPTION_NOT_ALIGNED ;
 int RRDR_OPTION_NULL2ZERO ;
 int RRDR_OPTION_PERCENTAGE ;
 int abs (int) ;
 int config_parse_duration (char*,int*) ;
 int debug (int ,char*,size_t,char const*,char*) ;
 int error (char*,size_t,char const*,char*,...) ;
 int freez (char*) ;
 scalar_t__ isspace (char) ;
 scalar_t__ strcasecmp (char*,char*) ;
 char* strcasestr (char*,char*) ;
 char* strdupz (char*) ;
 int web_client_api_request_v1_data_group (char*,int ) ;

__attribute__((used)) static inline int health_parse_db_lookup(
        size_t line, const char *filename, char *string,
        RRDR_GROUPING *group_method, int *after, int *before, int *every,
        uint32_t *options, char **dimensions, char **foreachdim
) {
    debug(D_HEALTH, "Health configuration parsing database lookup %zu@%s: %s", line, filename, string);

    if(*dimensions) freez(*dimensions);
    if(*foreachdim) freez(*foreachdim);
    *dimensions = ((void*)0);
    *foreachdim = ((void*)0);
    *after = 0;
    *before = 0;
    *every = 0;
    *options = 0;

    char *s = string, *key;


    key = s;
    while(*s && !isspace(*s)) s++;
    while(*s && isspace(*s)) *s++ = '\0';
    if(!*s) {
        error("Health configuration invalid chart calculation at line %zu of file '%s': expected group method followed by the 'after' time, but got '%s'",
                line, filename, key);
        return 0;
    }

    if((*group_method = web_client_api_request_v1_data_group(key, RRDR_GROUPING_UNDEFINED)) == RRDR_GROUPING_UNDEFINED) {
        error("Health configuration at line %zu of file '%s': invalid group method '%s'",
                line, filename, key);
        return 0;
    }


    key = s;
    while(*s && !isspace(*s)) s++;
    while(*s && isspace(*s)) *s++ = '\0';

    if(!config_parse_duration(key, after)) {
        error("Health configuration at line %zu of file '%s': invalid duration '%s' after group method",
                line, filename, key);
        return 0;
    }


    *every = abs(*after);


    while(*s) {
        key = s;
        while(*s && !isspace(*s)) s++;
        while(*s && isspace(*s)) *s++ = '\0';
        if(!*key) break;

        if(!strcasecmp(key, "at")) {
            char *value = s;
            while(*s && !isspace(*s)) s++;
            while(*s && isspace(*s)) *s++ = '\0';

            if (!config_parse_duration(value, before)) {
                error("Health configuration at line %zu of file '%s': invalid duration '%s' for '%s' keyword",
                        line, filename, value, key);
            }
        }
        else if(!strcasecmp(key, HEALTH_EVERY_KEY)) {
            char *value = s;
            while(*s && !isspace(*s)) s++;
            while(*s && isspace(*s)) *s++ = '\0';

            if (!config_parse_duration(value, every)) {
                error("Health configuration at line %zu of file '%s': invalid duration '%s' for '%s' keyword",
                        line, filename, value, key);
            }
        }
        else if(!strcasecmp(key, "absolute") || !strcasecmp(key, "abs") || !strcasecmp(key, "absolute_sum")) {
            *options |= RRDR_OPTION_ABSOLUTE;
        }
        else if(!strcasecmp(key, "min2max")) {
            *options |= RRDR_OPTION_MIN2MAX;
        }
        else if(!strcasecmp(key, "null2zero")) {
            *options |= RRDR_OPTION_NULL2ZERO;
        }
        else if(!strcasecmp(key, "percentage")) {
            *options |= RRDR_OPTION_PERCENTAGE;
        }
        else if(!strcasecmp(key, "unaligned")) {
            *options |= RRDR_OPTION_NOT_ALIGNED;
        }
        else if(!strcasecmp(key, "match-ids") || !strcasecmp(key, "match_ids")) {
            *options |= RRDR_OPTION_MATCH_IDS;
        }
        else if(!strcasecmp(key, "match-names") || !strcasecmp(key, "match_names")) {
            *options |= RRDR_OPTION_MATCH_NAMES;
        }
        else if(!strcasecmp(key, "of")) {
            char *find = ((void*)0);
            if(*s && strcasecmp(s, "all") != 0) {
                find = strcasestr(s, " foreach");
                if(find) {
                    *find = '\0';
                }
                *dimensions = strdupz(s);
            }

            if(!find) {
                break;
            }
            s = ++find;
        }
        else if(!strcasecmp(key, HEALTH_FOREACH_KEY )) {
            *foreachdim = strdupz(s);
            break;
        }
        else {
            error("Health configuration at line %zu of file '%s': unknown keyword '%s'",
                    line, filename, key);
        }
    }

    return 1;
}
