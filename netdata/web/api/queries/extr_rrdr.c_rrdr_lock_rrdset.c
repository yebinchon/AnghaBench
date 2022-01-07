
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int has_st_lock; int st; } ;
typedef TYPE_1__ RRDR ;


 int error (char*) ;
 int rrdset_rdlock (int ) ;
 scalar_t__ unlikely (int) ;

__attribute__((used)) inline static void rrdr_lock_rrdset(RRDR *r) {
    if(unlikely(!r)) {
        error("NULL value given!");
        return;
    }

    rrdset_rdlock(r->st);
    r->has_st_lock = 1;
}
