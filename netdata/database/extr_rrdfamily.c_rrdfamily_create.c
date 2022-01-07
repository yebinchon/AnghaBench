
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* family; int use_count; int rrdvar_root_index; int hash_family; } ;
typedef int RRDHOST ;
typedef TYPE_1__ RRDFAMILY ;


 int avl_init_lock (int *,int ) ;
 TYPE_1__* callocz (int,int) ;
 int error (char*,char*,char*) ;
 TYPE_1__* rrdfamily_index_add (int *,TYPE_1__*) ;
 TYPE_1__* rrdfamily_index_find (int *,char const*,int ) ;
 int rrdvar_compare ;
 int simple_hash (char*) ;
 char* strdupz (char const*) ;

RRDFAMILY *rrdfamily_create(RRDHOST *host, const char *id) {
    RRDFAMILY *rc = rrdfamily_index_find(host, id, 0);
    if(!rc) {
        rc = callocz(1, sizeof(RRDFAMILY));

        rc->family = strdupz(id);
        rc->hash_family = simple_hash(rc->family);


        avl_init_lock(&rc->rrdvar_root_index, rrdvar_compare);

        RRDFAMILY *ret = rrdfamily_index_add(host, rc);
        if(ret != rc)
            error("RRDFAMILY: INTERNAL ERROR: Expected to INSERT RRDFAMILY '%s' into index, but inserted '%s'.", rc->family, (ret)?ret->family:"NONE");
    }

    rc->use_count++;
    return rc;
}
