
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static int count_pages(int length, int page_size) {
 int num_pages = 0;
 if (page_size > 0) {
  num_pages = length / page_size;
  if (length % page_size) {
   num_pages++;
  }
 }
 return num_pages;
}
