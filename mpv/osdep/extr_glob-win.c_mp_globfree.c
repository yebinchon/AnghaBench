
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int ctx; } ;
typedef TYPE_1__ mp_glob_t ;


 int talloc_free (int ) ;

void mp_globfree(mp_glob_t *pglob)
{
    talloc_free(pglob->ctx);
}
