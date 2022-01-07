
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bytelen; } ;
typedef TYPE_1__ ByteProg ;


 int NON_ANCHORED_PREFIX ;
 int * _compilecode (char const*,TYPE_1__*,int) ;

int re1_5_sizecode(const char *re)
{
    ByteProg dummyprog = {

        .bytelen = 5 + NON_ANCHORED_PREFIX
    };

    if (_compilecode(re, &dummyprog, 1) == ((void*)0)) return -1;

    return dummyprog.bytelen;
}
