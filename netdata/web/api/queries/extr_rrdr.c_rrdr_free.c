
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* od; struct TYPE_5__* o; struct TYPE_5__* v; struct TYPE_5__* t; } ;
typedef TYPE_1__ RRDR ;


 int error (char*) ;
 int freez (TYPE_1__*) ;
 int rrdr_unlock_rrdset (TYPE_1__*) ;
 scalar_t__ unlikely (int) ;

inline void rrdr_free(RRDR *r)
{
    if(unlikely(!r)) {
        error("NULL value given!");
        return;
    }

    rrdr_unlock_rrdset(r);
    freez(r->t);
    freez(r->v);
    freez(r->o);
    freez(r->od);
    freez(r);
}
