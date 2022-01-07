
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {char* key; int key_len; int key_free; scalar_t__ val_free; scalar_t__ val_len; int * val; } ;
typedef TYPE_1__ clusterKeyVal ;
struct TYPE_8__ {size_t len; size_t size; TYPE_1__* entry; } ;
typedef TYPE_2__ clusterDistList ;


 TYPE_1__* erealloc (TYPE_1__*,int) ;

__attribute__((used)) static clusterKeyVal *cluster_dl_add_key(clusterDistList *dl, char *key,
                                         int key_len, int key_free)
{

    if (dl->len == dl->size) {
        dl->entry = erealloc(dl->entry, sizeof(clusterKeyVal) * dl->size * 2);
        dl->size *= 2;
    }


    dl->entry[dl->len].key = key;
    dl->entry[dl->len].key_len = key_len;
    dl->entry[dl->len].key_free = key_free;


    dl->entry[dl->len].val = ((void*)0);
    dl->entry[dl->len].val_len = 0;
    dl->entry[dl->len].val_free = 0;

    return &(dl->entry[dl->len++]);
}
