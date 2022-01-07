
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CRYPTO_THREAD_lock_free (int *) ;
 int free_type ;
 int lh_OBJ_NAME_doall (int *,int ) ;
 int lh_OBJ_NAME_free (int *) ;
 unsigned long lh_OBJ_NAME_get_down_load (int *) ;
 int lh_OBJ_NAME_set_down_load (int *,unsigned long) ;
 int name_funcs_free ;
 int * name_funcs_stack ;
 int * names_lh ;
 int names_lh_free_doall ;
 int * obj_lock ;
 int sk_NAME_FUNCS_pop_free (int *,int ) ;

void OBJ_NAME_cleanup(int type)
{
    unsigned long down_load;

    if (names_lh == ((void*)0))
        return;

    free_type = type;
    down_load = lh_OBJ_NAME_get_down_load(names_lh);
    lh_OBJ_NAME_set_down_load(names_lh, 0);

    lh_OBJ_NAME_doall(names_lh, names_lh_free_doall);
    if (type < 0) {
        lh_OBJ_NAME_free(names_lh);
        sk_NAME_FUNCS_pop_free(name_funcs_stack, name_funcs_free);
        CRYPTO_THREAD_lock_free(obj_lock);
        names_lh = ((void*)0);
        name_funcs_stack = ((void*)0);
        obj_lock = ((void*)0);
    } else
        lh_OBJ_NAME_set_down_load(names_lh, down_load);
}
