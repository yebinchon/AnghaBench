
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int size_allocated; scalar_t__ data; } ;
typedef TYPE_1__ CString ;


 int cstr_realloc (TYPE_1__*,int) ;

void cstr_ccat(CString *cstr, int ch)
{
 int size;
 size = cstr->size + 1;
 if (size > cstr->size_allocated) {
  cstr_realloc (cstr, size);
 }
 ((unsigned char *) cstr->data)[size - 1] = ch;
 cstr->size = size;
}
