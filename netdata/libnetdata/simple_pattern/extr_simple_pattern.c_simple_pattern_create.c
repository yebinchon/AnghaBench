
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct simple_pattern {char negative; struct simple_pattern* next; } ;
typedef int isseparator ;
typedef int SIMPLE_PREFIX_MODE ;
typedef struct simple_pattern SIMPLE_PATTERN ;


 int freez (char*) ;
 char* mallocz (scalar_t__) ;
 int memset (int*,int ,int) ;
 struct simple_pattern* parse_pattern (char*,int ) ;
 scalar_t__ strlen (char const*) ;
 scalar_t__ unlikely (int) ;

SIMPLE_PATTERN *simple_pattern_create(const char *list, const char *separators, SIMPLE_PREFIX_MODE default_mode) {
    struct simple_pattern *root = ((void*)0), *last = ((void*)0);

    if(unlikely(!list || !*list)) return root;

    int isseparator[256] = {
            [' '] = 1
            , ['\t'] = 1
            , ['\r'] = 1
            , ['\n'] = 1
            , ['\f'] = 1
            , ['\v'] = 1
    };

    if (unlikely(separators && *separators)) {
        memset(&isseparator[0], 0, sizeof(isseparator));
        while(*separators) isseparator[(unsigned char)*separators++] = 1;
    }

    char *buf = mallocz(strlen(list) + 1);
    const char *s = list;

    while(s && *s) {
        buf[0] = '\0';
        char *c = buf;

        char negative = 0;


        while(isseparator[(unsigned char)*s])
            s++;

        if(*s == '!') {
            negative = 1;
            s++;
        }


        if(unlikely(!*s))
            break;


        char escape = 0;
        while(*s) {
            if(*s == '\\' && !escape) {
                escape = 1;
                s++;
            }
            else {
                if (isseparator[(unsigned char)*s] && !escape) {
                    s++;
                    break;
                }

                *c++ = *s++;
                escape = 0;
            }
        }


        *c = '\0';


        if(unlikely(!*buf))
            continue;


        struct simple_pattern *m = parse_pattern(buf, default_mode);
        m->negative = negative;


        if(unlikely(!root))
            root = last = m;
        else {
            last->next = m;
            last = m;
        }
    }

    freez(buf);
    return (SIMPLE_PATTERN *)root;
}
