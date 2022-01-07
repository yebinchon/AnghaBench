
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_partition_entry {char const* member_0; size_t member_1; int data; int member_2; } ;


 int errno ;
 int error (int,int ,char*) ;
 int malloc (size_t) ;

__attribute__((used)) static struct image_partition_entry alloc_image_partition(const char *name, size_t len) {
 struct image_partition_entry entry = {name, len, malloc(len)};
 if (!entry.data)
  error(1, errno, "malloc");

 return entry;
}
