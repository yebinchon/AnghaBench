
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int calculated_number ;


 int str2ld (char const*,char**) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int parse_constant(const char **string, calculated_number *number) {
    char *end = ((void*)0);
    calculated_number n = str2ld(*string, &end);
    if(unlikely(!end || *string == end)) {
        *number = 0;
        return 0;
    }
    *number = n;
    *string = end;
    return 1;
}
