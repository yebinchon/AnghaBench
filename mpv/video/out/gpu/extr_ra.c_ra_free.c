
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ra {TYPE_1__* fns; } ;
struct TYPE_2__ {int (* destroy ) (struct ra*) ;} ;


 int stub1 (struct ra*) ;
 int talloc_free (struct ra*) ;

void ra_free(struct ra **ra)
{
    if (*ra)
        (*ra)->fns->destroy(*ra);
    talloc_free(*ra);
    *ra = ((void*)0);
}
