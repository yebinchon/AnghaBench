
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint32_t ;
struct file_descriptor {char const* name; int magic; scalar_t__ pos; scalar_t__ count; scalar_t__ hash; } ;
typedef int avl ;


 int all_files_index ;
 scalar_t__ avl_search (int *,int *) ;
 scalar_t__ simple_hash (char const*) ;

__attribute__((used)) static struct file_descriptor *file_descriptor_find(const char *name, uint32_t hash) {
    struct file_descriptor tmp;
    tmp.hash = (hash)?hash:simple_hash(name);
    tmp.name = name;
    tmp.count = 0;
    tmp.pos = 0;




    return (struct file_descriptor *)avl_search(&all_files_index, (avl *) &tmp);
}
