
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hash {int dummy; } ;


 void* rewrite_create (char const*,int *) ;

__attribute__((used)) static void *rewrite_create_from_hash(const char *prefix,
                                      const struct hash *hash
                                      __attribute__((unused)))
{
    return rewrite_create(prefix, ((void*)0));
}
