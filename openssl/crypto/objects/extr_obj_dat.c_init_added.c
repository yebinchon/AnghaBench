
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * added ;
 int added_obj_cmp ;
 int added_obj_hash ;
 int * lh_ADDED_OBJ_new (int ,int ) ;

__attribute__((used)) static int init_added(void)
{
    if (added != ((void*)0))
        return 1;
    added = lh_ADDED_OBJ_new(added_obj_hash, added_obj_cmp);
    return added != ((void*)0);
}
