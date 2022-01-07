
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct file_cache_entry {TYPE_1__* funcs; } ;
struct cache_entry {int dummy; } ;
struct TYPE_2__ {int (* free ) (struct file_cache_entry*) ;} ;


 int free (struct file_cache_entry*) ;
 int stub1 (struct file_cache_entry*) ;

__attribute__((used)) static void destroy_cache_entry(struct cache_entry *entry,
                                void *context __attribute__((unused)))
{
    struct file_cache_entry *fce = (struct file_cache_entry *)entry;

    fce->funcs->free(fce);
    free(fce);
}
