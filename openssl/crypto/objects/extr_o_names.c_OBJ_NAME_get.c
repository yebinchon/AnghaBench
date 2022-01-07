
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char const* name; int type; char* data; scalar_t__ alias; } ;
typedef TYPE_1__ OBJ_NAME ;


 int CRYPTO_THREAD_read_lock (int ) ;
 int CRYPTO_THREAD_unlock (int ) ;
 int OBJ_NAME_ALIAS ;
 int OBJ_NAME_init () ;
 TYPE_1__* lh_OBJ_NAME_retrieve (int ,TYPE_1__*) ;
 int names_lh ;
 int obj_lock ;

const char *OBJ_NAME_get(const char *name, int type)
{
    OBJ_NAME on, *ret;
    int num = 0, alias;
    const char *value = ((void*)0);

    if (name == ((void*)0))
        return ((void*)0);
    if (!OBJ_NAME_init())
        return ((void*)0);
    CRYPTO_THREAD_read_lock(obj_lock);

    alias = type & OBJ_NAME_ALIAS;
    type &= ~OBJ_NAME_ALIAS;

    on.name = name;
    on.type = type;

    for (;;) {
        ret = lh_OBJ_NAME_retrieve(names_lh, &on);
        if (ret == ((void*)0))
            break;
        if ((ret->alias) && !alias) {
            if (++num > 10)
                break;
            on.name = ret->data;
        } else {
            value = ret->data;
            break;
        }
    }

    CRYPTO_THREAD_unlock(obj_lock);
    return value;
}
