
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int hashtable_t ;


 size_t hash_str (char const*) ;
 int hashtable_do_del (int *,char const*,size_t) ;

int hashtable_del(hashtable_t *hashtable, const char *key)
{
    size_t hash = hash_str(key);
    return hashtable_do_del(hashtable, key, hash);
}
