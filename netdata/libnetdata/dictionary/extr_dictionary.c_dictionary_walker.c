
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__** avl_link; } ;
typedef TYPE_1__ avl ;
struct TYPE_5__ {void* value; } ;
typedef TYPE_2__ NAME_VALUE ;



__attribute__((used)) static int dictionary_walker(avl *a, int (*callback)(void *entry, void *data), void *data) {
    int total = 0, ret = 0;

    if(a->avl_link[0]) {
        ret = dictionary_walker(a->avl_link[0], callback, data);
        if(ret < 0) return ret;
        total += ret;
    }

    ret = callback(((NAME_VALUE *)a)->value, data);
    if(ret < 0) return ret;
    total += ret;

    if(a->avl_link[1]) {
        ret = dictionary_walker(a->avl_link[1], callback, data);
        if (ret < 0) return ret;
        total += ret;
    }

    return total;
}
