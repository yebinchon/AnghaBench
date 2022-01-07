
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct section {char* name; scalar_t__ hash; } ;
struct config {int index; } ;
typedef int avl ;


 scalar_t__ avl_search_lock (int *,int *) ;
 scalar_t__ simple_hash (char const*) ;

__attribute__((used)) static struct section *appconfig_index_find(struct config *root, const char *name, uint32_t hash) {
    struct section tmp;
    tmp.hash = (hash)?hash:simple_hash(name);
    tmp.name = (char *)name;

    return (struct section *)avl_search_lock(&root->index, (avl *) &tmp);
}
