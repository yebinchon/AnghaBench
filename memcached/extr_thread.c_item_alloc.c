
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int rel_time_t ;
typedef int item ;


 int * do_item_alloc (char*,size_t,int,int ,int) ;

item *item_alloc(char *key, size_t nkey, int flags, rel_time_t exptime, int nbytes) {
    item *it;

    it = do_item_alloc(key, nkey, flags, exptime, nbytes);
    return it;
}
