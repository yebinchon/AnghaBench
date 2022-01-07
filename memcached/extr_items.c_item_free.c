
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int it_flags; size_t slabs_clsid; scalar_t__ refcount; } ;
typedef TYPE_1__ item ;


 int DEBUG_REFCNT (TYPE_1__*,float) ;
 int ITEM_LINKED ;
 unsigned int ITEM_clsid (TYPE_1__*) ;
 size_t ITEM_ntotal (TYPE_1__*) ;
 int assert (int) ;
 TYPE_1__** heads ;
 int slabs_free (TYPE_1__*,size_t,unsigned int) ;
 TYPE_1__** tails ;

void item_free(item *it) {
    size_t ntotal = ITEM_ntotal(it);
    unsigned int clsid;
    assert((it->it_flags & ITEM_LINKED) == 0);
    assert(it != heads[it->slabs_clsid]);
    assert(it != tails[it->slabs_clsid]);
    assert(it->refcount == 0);


    clsid = ITEM_clsid(it);
    DEBUG_REFCNT(it, 'F');
    slabs_free(it, ntotal, clsid);
}
