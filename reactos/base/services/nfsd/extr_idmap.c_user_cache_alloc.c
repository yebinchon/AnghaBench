
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct list_entry {int dummy; } ;
struct idmap_user {struct list_entry entry; } ;


 struct idmap_user* calloc (int,int) ;

__attribute__((used)) static struct list_entry* user_cache_alloc()
{
    struct idmap_user *user = calloc(1, sizeof(struct idmap_user));
    return user == ((void*)0) ? ((void*)0) : &user->entry;
}
