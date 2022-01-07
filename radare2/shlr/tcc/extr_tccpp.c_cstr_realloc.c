
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int size_allocated; void* data; void* data_allocated; } ;
typedef TYPE_1__ CString ;


 void* realloc (void*,int) ;

__attribute__((used)) static void cstr_realloc(CString *cstr, int new_size)
{
 int size;
 void *data;

 size = cstr->size_allocated;
 if (size == 0) {
  size = 8;
 }
 while (size < new_size)
  size = size * 2;
 data = realloc (cstr->data_allocated, size);
 cstr->data_allocated = data;
 cstr->size_allocated = size;
 cstr->data = data;
}
