
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isalpha (char const) ;
 scalar_t__ isoperatorterm_word (char const) ;

__attribute__((used)) static inline int isoperatorterm_symbol(const char s) {
    if(isoperatorterm_word(s) || isalpha(s))
        return 1;

    return 0;
}
