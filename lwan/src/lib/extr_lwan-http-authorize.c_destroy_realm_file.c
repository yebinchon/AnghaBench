
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct realm_password_file_t {int entries; } ;
struct cache_entry {int dummy; } ;


 int free (struct realm_password_file_t*) ;
 int hash_free (int ) ;

__attribute__((used)) static void destroy_realm_file(struct cache_entry *entry,
                               void *context __attribute__((unused)))
{
    struct realm_password_file_t *rpf = (struct realm_password_file_t *)entry;
    hash_free(rpf->entries);
    free(rpf);
}
