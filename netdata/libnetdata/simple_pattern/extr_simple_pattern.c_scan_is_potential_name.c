
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simple_pattern {char* match; scalar_t__ mode; struct simple_pattern* child; } ;


 scalar_t__ SIMPLE_PATTERN_EXACT ;
 int strcmp (char*,char*) ;

__attribute__((used)) static void scan_is_potential_name(struct simple_pattern *p, int *alpha, int *colon, int *wildcards)
{
    while (p) {
        if (p->match) {
            if(p->mode == SIMPLE_PATTERN_EXACT && !strcmp("localhost", p->match)) {
                p = p->child;
                continue;
            }
            char const *scan = p->match;
            while (*scan != 0) {
                if ((*scan >= 'a' && *scan <= 'z') || (*scan >= 'A' && *scan <= 'Z'))
                    *alpha = 1;
                if (*scan == ':')
                    *colon = 1;
                scan++;
            }
            if (p->mode != SIMPLE_PATTERN_EXACT)
                *wildcards = 1;
            p = p->child;
        }
    }
}
