
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int nwchar_t ;
struct TYPE_4__ {int size; int size_allocated; scalar_t__ data; } ;
typedef TYPE_1__ CString ;


 int cstr_realloc (TYPE_1__*,int) ;

void cstr_wccat(CString *cstr, int ch)
{
 int size;
 size = cstr->size + sizeof(nwchar_t);
 if (size > cstr->size_allocated) {
  cstr_realloc (cstr, size);
 }
 *(nwchar_t *) (((unsigned char *) cstr->data) + size - sizeof(nwchar_t)) = ch;
 cstr->size = size;
}
