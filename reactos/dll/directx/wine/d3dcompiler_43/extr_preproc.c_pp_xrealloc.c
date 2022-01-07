
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int state; } ;


 int assert (int) ;
 TYPE_1__ pp_status ;
 void* realloc (void*,size_t) ;

void *pp_xrealloc(void *p, size_t size)
{
    void *res;

    assert(size > 0);
    res = realloc(p, size);
    if(res == ((void*)0))
    {

        pp_status.state = 1;
    }
    return res;
}
