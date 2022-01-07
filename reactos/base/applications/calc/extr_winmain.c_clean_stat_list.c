
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_3__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int num; scalar_t__ next; } ;
typedef TYPE_1__ statistic_t ;
struct TYPE_5__ {TYPE_1__* stat; } ;


 TYPE_3__ calc ;
 int free (TYPE_1__*) ;
 int rpn_free (int *) ;

__attribute__((used)) static void clean_stat_list(void)
{
    statistic_t *p = calc.stat;

    while (p != ((void*)0)) {
        statistic_t *s = p;
        p = (statistic_t *)(p->next);
        rpn_free(&s->num);
        free(s);
    }
    calc.stat = p;
}
