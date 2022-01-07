
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_partition_entry {int data; } ;


 int free (int ) ;

__attribute__((used)) static void free_image_partition(struct image_partition_entry entry) {
 free(entry.data);
}
