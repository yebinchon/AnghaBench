
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct base {int dummy; } ;


 int NUMBER1 ;
 int NUMBER10 ;
 int NUMBER11 ;
 int NUMBER2 ;
 int NUMBER3 ;
 int NUMBER4 ;
 int NUMBER5 ;
 int NUMBER6 ;
 int NUMBER7 ;
 int NUMBER8 ;
 int NUMBER9 ;
 int begin (struct base*) ;
 int callback ;
 scalar_t__ check (struct base*,scalar_t__) ;
 struct base* entry (struct base*,char*,int ,int *,int ) ;
 scalar_t__* strings ;
 scalar_t__ unlikely (int) ;
 int * values6 ;

void test7() {

    static struct base *base = ((void*)0);

    if(unlikely(!base)) {
        base = entry(base, "cache", NUMBER1, &values6[0], callback);
        base = entry(base, "rss", NUMBER2, &values6[1], callback);
        base = entry(base, "rss_huge", NUMBER3, &values6[2], callback);
        base = entry(base, "mapped_file", NUMBER4, &values6[3], callback);
        base = entry(base, "writeback", NUMBER5, &values6[4], callback);
        base = entry(base, "dirty", NUMBER6, &values6[5], callback);
        base = entry(base, "swap", NUMBER7, &values6[6], callback);
        base = entry(base, "pgpgin", NUMBER8, &values6[7], callback);
        base = entry(base, "pgpgout", NUMBER9, &values6[8], callback);
        base = entry(base, "pgfault", NUMBER10, &values6[9], callback);
        base = entry(base, "pgmajfault", NUMBER11, &values6[10], callback);
    }

    begin(base);

    int i;
    for(i = 0; strings[i] ; i++) {
        if(check(base, strings[i]))
            break;
    }
}
