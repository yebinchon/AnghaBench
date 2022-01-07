
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int error (char*,char const*,char*,char*) ;
 scalar_t__ read_file (char const*,char*,int) ;
 long double str2ld (char*,char**) ;

__attribute__((used)) static unsigned long long int bcache_read_number_with_units(const char *filename) {
    char buffer[50 + 1];
    if(read_file(filename, buffer, 50) == 0) {
        static int unknown_units_error = 10;

        char *end = ((void*)0);
        long double value = str2ld(buffer, &end);
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
                error("bcache file '%s' provides value '%s' with unknown units '%s'", filename, buffer, end);
                unknown_units_error--;
            }
        }

        return (unsigned long long int)value;
    }

    return 0;
}
