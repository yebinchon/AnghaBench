
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int calculated_number ;


 scalar_t__ isdigit (char const) ;
 scalar_t__ isspace (char const) ;
 int str2ld (char const*,char**) ;
 int strcmp (char const*,char*) ;
 scalar_t__ unlikely (int) ;

int config_parse_duration(const char* string, int* result) {
    while(*string && isspace(*string)) string++;

    if(unlikely(!*string)) goto fallback;

    if(*string == 'n' && !strcmp(string, "never")) {

        *result = 0;
        return 1;
    }


    if(!(isdigit(*string) || *string == '+' || *string == '-')) goto fallback;

    char *e = ((void*)0);
    calculated_number n = str2ld(string, &e);
    if(e && *e) {
        switch (*e) {
            case 'Y':
                *result = (int) (n * 31536000);
                break;
            case 'M':
                *result = (int) (n * 2592000);
                break;
            case 'w':
                *result = (int) (n * 604800);
                break;
            case 'd':
                *result = (int) (n * 86400);
                break;
            case 'h':
                *result = (int) (n * 3600);
                break;
            case 'm':
                *result = (int) (n * 60);
                break;
            case 's':
            default:
                *result = (int) (n);
                break;
        }
    }
    else
        *result = (int)(n);

    return 1;

    fallback:
    *result = 0;
    return 0;
}
