
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_6__ {scalar_t__ found; int iteration; scalar_t__ wanted; TYPE_1__* head; TYPE_1__* next_keyword; int name; int added; int allocated; int relinkings; } ;
struct TYPE_5__ {scalar_t__ hash; int dst; int flags; struct TYPE_5__* next; struct TYPE_5__* prev; int name; int (* processor ) (int ,scalar_t__,char const*,int) ;} ;
typedef TYPE_1__ ARL_ENTRY ;
typedef TYPE_2__ ARL_BASE ;


 int ARL_ENTRY_FLAG_DYNAMIC ;
 int ARL_ENTRY_FLAG_FOUND ;
 TYPE_1__* callocz (int,int) ;
 int fatal (char*) ;
 int info (char*,int ,char const*) ;
 scalar_t__ simple_hash (char const*) ;
 int strcmp (int ,char const*) ;
 int strdupz (char const*) ;
 int stub1 (int ,scalar_t__,char const*,int) ;
 scalar_t__ unlikely (int) ;

int arl_find_or_create_and_relink(ARL_BASE *base, const char *s, const char *value) {
    ARL_ENTRY *e;

    uint32_t hash = simple_hash(s);


    for(e = base->head; e ; e = e->next)
        if(e->hash == hash && !strcmp(e->name, s))
            break;






    if(e) {


        base->relinkings++;


        if(unlikely(e->dst)) {
            e->processor(e->name, hash, value, e->dst);
            base->found++;
        }


        if(e->next) e->next->prev = e->prev;
        if(e->prev) e->prev->next = e->next;


        if(base->head == e)
            base->head = e->next;
    }
    else {



        e = callocz(1, sizeof(ARL_ENTRY));
        e->name = strdupz(s);
        e->hash = hash;
        e->flags = ARL_ENTRY_FLAG_DYNAMIC;

        base->allocated++;
        base->added++;
    }






    e->flags |= ARL_ENTRY_FLAG_FOUND;


    e->next = base->next_keyword;
    if(base->next_keyword) {
        e->prev = base->next_keyword->prev;
        base->next_keyword->prev = e;

        if(e->prev)
            e->prev->next = e;

        if(base->head == base->next_keyword)
            base->head = e;
    }
    else {
        e->prev = ((void*)0);

        if(!base->head)
            base->head = e;
    }


    base->next_keyword = e->next;
    if(unlikely(!base->next_keyword))
        base->next_keyword = base->head;

    if(unlikely(base->found == base->wanted)) {

        return 1;
    }

    return 0;
}
