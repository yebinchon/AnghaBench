
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int phpdbg_watchpoint_t ;
typedef int phpdbg_watch_element ;
typedef int Bucket ;


 int * phpdbg_add_watch_element (int *,int *) ;
 int phpdbg_set_bucket_watchpoint (int *,int *) ;
 int phpdbg_watch_parent_ht (int *) ;

phpdbg_watch_element *phpdbg_add_bucket_watch_element(Bucket *bucket, phpdbg_watch_element *element) {
 phpdbg_watchpoint_t watch;
 phpdbg_set_bucket_watchpoint(bucket, &watch);
 element = phpdbg_add_watch_element(&watch, element);
 phpdbg_watch_parent_ht(element);
 return element;
}
