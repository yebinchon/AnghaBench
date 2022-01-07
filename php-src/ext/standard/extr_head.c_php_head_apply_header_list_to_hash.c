
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
struct TYPE_2__ {scalar_t__ header; } ;
typedef TYPE_1__ sapi_header_struct ;


 int add_next_index_string (int *,char*) ;

__attribute__((used)) static void php_head_apply_header_list_to_hash(void *data, void *arg)
{
 sapi_header_struct *sapi_header = (sapi_header_struct *)data;

 if (arg && sapi_header) {
  add_next_index_string((zval *)arg, (char *)(sapi_header->header));
 }
}
