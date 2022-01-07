
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int value; scalar_t__ name; } ;
typedef int ARL_BASE ;


 int arl_begin (int *) ;
 scalar_t__ arl_check (int *,scalar_t__,int ) ;
 int * arl_create (char*,int ,int) ;
 int arl_expect_custom (int *,char*,int *,int *) ;
 int arl_str2ull ;
 TYPE_1__* pairs ;
 scalar_t__ unlikely (int) ;
 int * values7 ;

void test7() {
    static ARL_BASE *base = ((void*)0);

    if(unlikely(!base)) {
        base = arl_create("test7", arl_str2ull, 60);
        arl_expect_custom(base, "cache", ((void*)0), &values7[0]);
        arl_expect_custom(base, "rss", ((void*)0), &values7[1]);
        arl_expect_custom(base, "rss_huge", ((void*)0), &values7[2]);
        arl_expect_custom(base, "mapped_file", ((void*)0), &values7[3]);
        arl_expect_custom(base, "writeback", ((void*)0), &values7[4]);
        arl_expect_custom(base, "dirty", ((void*)0), &values7[5]);
        arl_expect_custom(base, "swap", ((void*)0), &values7[6]);
        arl_expect_custom(base, "pgpgin", ((void*)0), &values7[7]);
        arl_expect_custom(base, "pgpgout", ((void*)0), &values7[8]);
        arl_expect_custom(base, "pgfault", ((void*)0), &values7[9]);
        arl_expect_custom(base, "pgmajfault", ((void*)0), &values7[10]);
    }

    arl_begin(base);

    int i;
    for(i = 0; pairs[i].name ; i++)
        if(arl_check(base, pairs[i].name, pairs[i].value)) break;
}
