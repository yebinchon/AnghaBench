
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int avl ;
struct TYPE_2__ {int registry_urls_root_index; } ;
typedef int REGISTRY_URL ;


 scalar_t__ avl_insert (int *,int *) ;
 TYPE_1__ registry ;

inline REGISTRY_URL *registry_url_index_add(REGISTRY_URL *u) {
    return (REGISTRY_URL *)avl_insert(&(registry.registry_urls_root_index), (avl *)(u));
}
