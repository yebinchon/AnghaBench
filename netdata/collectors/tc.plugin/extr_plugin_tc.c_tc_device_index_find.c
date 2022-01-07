
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct tc_device {char* id; scalar_t__ hash; } ;
typedef int avl ;


 scalar_t__ avl_search (int *,int *) ;
 scalar_t__ simple_hash (char*) ;
 int tc_device_root_index ;

__attribute__((used)) static inline struct tc_device *tc_device_index_find(const char *id, uint32_t hash) {
    struct tc_device tmp;
    tmp.id = (char *)id;
    tmp.hash = (hash)?hash:simple_hash(tmp.id);

    return (struct tc_device *)avl_search(&(tc_device_root_index), (avl *)&tmp);
}
