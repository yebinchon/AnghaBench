
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct jsonsl_jpr_component_st {char* pstr; void* len; scalar_t__ ptype; void* idx; } ;
typedef scalar_t__ jsonsl_jpr_type_t ;
typedef int jsonsl_error_t ;


 int JSONSL_ERROR_PERCENT_BADHEX ;
 scalar_t__ JSONSL_PATH_INVALID ;
 scalar_t__ JSONSL_PATH_NONE ;
 scalar_t__ JSONSL_PATH_NUMERIC ;
 scalar_t__ JSONSL_PATH_STRING ;
 scalar_t__ JSONSL_PATH_WILDCARD ;
 char JSONSL_PATH_WILDCARD_CHAR ;
 scalar_t__ isdigit (char) ;
 scalar_t__ isxdigit (char) ;
 void* strlen (char*) ;
 char* strstr (char*,char*) ;
 void* strtoul (char*,char**,int) ;

__attribute__((used)) static
jsonsl_jpr_type_t
populate_component(char *in,
                   struct jsonsl_jpr_component_st *component,
                   char **next,
                   jsonsl_error_t *errp)
{
    unsigned long pctval;
    char *c = ((void*)0), *outp = ((void*)0), *end = ((void*)0);
    size_t input_len;
    jsonsl_jpr_type_t ret = JSONSL_PATH_NONE;

    if (*next == ((void*)0) || *(*next) == '\0') {
        return JSONSL_PATH_NONE;
    }


    *next = strstr(in, "/");
    if (*next != ((void*)0)) {
        *(*next) = '\0';
        input_len = *next - in;
        end = *next;
        *next += 1;
    } else {
        input_len = strlen(in);
        end = in + input_len + 1;
    }

    component->pstr = in;


    if (*in == JSONSL_PATH_WILDCARD_CHAR && input_len == 1) {

        ret = JSONSL_PATH_WILDCARD;
        goto GT_RET;
    } else if (isdigit(*in)) {

        char *endptr;
        component->idx = strtoul(in, &endptr, 10);
        if (endptr && *endptr == '\0') {
            ret = JSONSL_PATH_NUMERIC;
            goto GT_RET;
        }
    }


    ret = JSONSL_PATH_STRING;
    for (c = outp = in; c < end; c++, outp++) {
        char origc;
        if (*c != '%') {
            goto GT_ASSIGN;
        }





        if (c+2 >= end) {
            *errp = JSONSL_ERROR_PERCENT_BADHEX;
            return JSONSL_PATH_INVALID;
        }
        if (! (isxdigit(*(c+1)) && isxdigit(*(c+2))) ) {
            *errp = JSONSL_ERROR_PERCENT_BADHEX;
            return JSONSL_PATH_INVALID;
        }


        origc = *(c+3);
        *(c+3) = '\0';
        pctval = strtoul(c+1, ((void*)0), 16);
        *(c+3) = origc;

        *outp = (char) pctval;
        c += 2;
        continue;

        GT_ASSIGN:
        *outp = *c;
    }

    for (; outp < c; outp++) {
        *outp = '\0';
    }

    GT_RET:
    component->ptype = ret;
    if (ret != JSONSL_PATH_WILDCARD) {
        component->len = strlen(component->pstr);
    }
    return ret;
}
