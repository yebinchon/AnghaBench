
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

__attribute__((used)) static void delete_stat_item(int n)
{
    statistic_t *p = calc.stat;
    statistic_t *s;

    if (n == 0) {
        calc.stat = (statistic_t *)p->next;
        rpn_free(&p->num);
        free(p);
    } else {
        s = (statistic_t *)p->next;
        while (--n) {
            p = s;
            s = (statistic_t *)p->next;
        }
        p->next = s->next;
        rpn_free(&s->num);
        free(s);
    }
}
