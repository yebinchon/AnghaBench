
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * added ;
 int cleanup1_doall ;
 int cleanup2_doall ;
 int cleanup3_doall ;
 int lh_ADDED_OBJ_doall (int *,int ) ;
 int lh_ADDED_OBJ_free (int *) ;
 int lh_ADDED_OBJ_set_down_load (int *,int ) ;

void obj_cleanup_int(void)
{
    if (added == ((void*)0))
        return;
    lh_ADDED_OBJ_set_down_load(added, 0);
    lh_ADDED_OBJ_doall(added, cleanup1_doall);
    lh_ADDED_OBJ_doall(added, cleanup2_doall);
    lh_ADDED_OBJ_doall(added, cleanup3_doall);
    lh_ADDED_OBJ_free(added);
    added = ((void*)0);
}
