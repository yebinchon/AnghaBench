
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int fast; int slow; int expected; int allocated; int iteration; scalar_t__ found; scalar_t__ wanted; TYPE_1__* head; TYPE_1__* next_keyword; int name; } ;
struct TYPE_5__ {int dst; struct TYPE_5__* next; int hash; int name; int (* processor ) (int ,int ,char const*,int) ;int flags; } ;
typedef TYPE_1__ ARL_ENTRY ;
typedef TYPE_2__ ARL_BASE ;


 int ARL_ENTRY_FLAG_FOUND ;
 int arl_find_or_create_and_relink (TYPE_2__*,char const*,char const*) ;
 int info (char*,int ) ;
 scalar_t__ likely (int) ;
 int strcmp (char const*,int ) ;
 int stub1 (int ,int ,char const*,int) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) static inline int arl_check(ARL_BASE *base, const char *keyword, const char *value) {
    ARL_ENTRY *e = base->next_keyword;







    if(likely(!strcmp(keyword, e->name))) {






        e->flags |= ARL_ENTRY_FLAG_FOUND;


        if(unlikely(e->dst)) {
            e->processor(e->name, e->hash, value, e->dst);
            base->found++;
        }


        base->next_keyword = e->next;
        if(unlikely(!base->next_keyword))
            base->next_keyword = base->head;


        if(unlikely(base->found == base->wanted)) {

            return 1;
        }

        return 0;
    }






    return arl_find_or_create_and_relink(base, keyword, value);
}
