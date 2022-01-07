
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
typedef int avl ;
struct TYPE_7__ {int rrdset_root_index_name; } ;
struct TYPE_6__ {char const* name; char* id; int magic; int avlname; scalar_t__ hash_name; } ;
typedef TYPE_1__ RRDSET ;
typedef TYPE_2__ RRDHOST ;


 int RRDSET_MAGIC ;
 void* avl_search_lock (int *,int *) ;
 int error (char*,char const*,char*,char const*) ;
 TYPE_1__* rrdset_from_avlname (void*) ;
 scalar_t__ simple_hash (char const*) ;
 scalar_t__ strcmp (int ,int ) ;

__attribute__((used)) static inline RRDSET *rrdset_index_find_name(RRDHOST *host, const char *name, uint32_t hash) {
    void *result = ((void*)0);
    RRDSET tmp;
    tmp.name = name;
    tmp.hash_name = (hash)?hash:simple_hash(tmp.name);


    result = avl_search_lock(&host->rrdset_root_index_name, (avl *) (&(tmp.avlname)));
    if(result) {
        RRDSET *st = rrdset_from_avlname(result);
        if(strcmp(st->magic, RRDSET_MAGIC) != 0)
            error("Search for RRDSET %s returned an invalid RRDSET %s (name %s)", name, st->id, st->name);


        return rrdset_from_avlname(result);
    }

    return ((void*)0);
}
