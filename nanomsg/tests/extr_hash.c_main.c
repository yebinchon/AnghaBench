
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct nn_hash_item {int dummy; } ;
struct nn_hash {int dummy; } ;


 struct nn_hash_item* nn_alloc (int,char*) ;
 int nn_assert (int) ;
 int nn_free (struct nn_hash_item*) ;
 int nn_hash_erase (struct nn_hash*,struct nn_hash_item*) ;
 struct nn_hash_item* nn_hash_get (struct nn_hash*,int) ;
 int nn_hash_init (struct nn_hash*) ;
 int nn_hash_insert (struct nn_hash*,int,struct nn_hash_item*) ;
 int nn_hash_item_init (struct nn_hash_item*) ;
 int nn_hash_term (struct nn_hash*) ;

int main ()
{
    struct nn_hash hash;
    uint32_t k;
    struct nn_hash_item *item;
    struct nn_hash_item *item5000 = ((void*)0);

    nn_hash_init (&hash);


    for (k = 0; k != 10000; ++k) {
        item = nn_alloc (sizeof (struct nn_hash_item), "item");
        nn_assert (item);
        if (k == 5000)
            item5000 = item;
        nn_hash_item_init (item);
        nn_hash_insert (&hash, k, item);
    }


    nn_assert (nn_hash_get (&hash, 5000) == item5000);


    for (k = 0; k != 10000; ++k) {
        item = nn_hash_get (&hash, k);
        nn_hash_erase (&hash, item);
        nn_free (item);
    }
    nn_hash_term (&hash);

    return 0;
}
