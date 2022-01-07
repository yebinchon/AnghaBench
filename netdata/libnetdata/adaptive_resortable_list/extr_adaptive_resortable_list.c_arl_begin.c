
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int iteration; scalar_t__ relinkings; scalar_t__ expected; scalar_t__ allocated; scalar_t__ slow; scalar_t__ fast; int rechecks; scalar_t__ wanted; scalar_t__ found; TYPE_2__* head; TYPE_2__* next_keyword; int fred; scalar_t__ added; int name; } ;
struct TYPE_8__ {int flags; struct TYPE_8__* next; struct TYPE_8__* name; TYPE_1__* prev; } ;
struct TYPE_7__ {TYPE_2__* next; } ;
typedef TYPE_2__ ARL_ENTRY ;
typedef TYPE_3__ ARL_BASE ;


 int ARL_ENTRY_FLAG_DYNAMIC ;
 int ARL_ENTRY_FLAG_EXPECTED ;
 int ARL_ENTRY_FLAG_FOUND ;
 int arl_expect (TYPE_3__*,char*,int *) ;
 int freez (TYPE_2__*) ;
 int info (char*,int ,scalar_t__,scalar_t__,...) ;
 scalar_t__ likely (int) ;
 scalar_t__ unlikely (int) ;

void arl_begin(ARL_BASE *base) {
    if(unlikely(base->iteration > 0 && (base->added || (base->iteration % base->rechecks) == 0))) {
        int wanted_equals_expected = ((base->iteration % base->rechecks) == 0);



        base->added = 0;
        base->wanted = (wanted_equals_expected)?base->expected:0;

        ARL_ENTRY *e = base->head;
        while(e) {
            if(e->flags & ARL_ENTRY_FLAG_FOUND) {


                e->flags &= ~ARL_ENTRY_FLAG_FOUND;


                if(!wanted_equals_expected && e->flags & ARL_ENTRY_FLAG_EXPECTED)
                    base->wanted++;

            }
            else if(e->flags & ARL_ENTRY_FLAG_DYNAMIC && !(base->head == e && !e->next)) {





                ARL_ENTRY *t = e->next;


                if(e->next) e->next->prev = e->prev;
                if(e->prev) e->prev->next = e->next;
                if(base->head == e) base->head = e->next;


                freez(e->name);
                freez(e);


                base->fred++;


                e = t;
                continue;
            }

            e = e->next;
        }
    }

    if(unlikely(!base->head)) {



        arl_expect(base, "a-really-not-existing-source-keyword", ((void*)0));
    }

    base->iteration++;
    base->next_keyword = base->head;
    base->found = 0;

}
