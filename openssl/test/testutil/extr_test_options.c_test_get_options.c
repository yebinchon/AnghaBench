
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * member_0; } ;
typedef TYPE_1__ OPTIONS ;




const OPTIONS *test_get_options(void)
{
    static const OPTIONS default_options[] = {
        128,
        { ((void*)0) }
    };
    return default_options;
}
