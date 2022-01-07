
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ has_st_lock; int st; } ;
typedef TYPE_1__ RRDR ;


 int error (char*) ;
 scalar_t__ likely (scalar_t__) ;
 int rrdset_unlock (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) inline static void rrdr_unlock_rrdset(RRDR *r) {
    if(unlikely(!r)) {
        error("NULL value given!");
        return;
    }

    if(likely(r->has_st_lock)) {
        rrdset_unlock(r->st);
        r->has_st_lock = 0;
    }
}
