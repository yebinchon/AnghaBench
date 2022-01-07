
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int mcore_t ;
struct TYPE_3__ {scalar_t__ pos; scalar_t__ end; } ;
typedef TYPE_1__ mcore_handle ;


 scalar_t__ MCORE_INSTR_ALIGN ;
 int * find_instruction (scalar_t__) ;

mcore_t* mcore_next(mcore_handle* handle) {
 mcore_t *op = ((void*)0);
 if (!handle || handle->pos + MCORE_INSTR_ALIGN > handle->end) {
  return ((void*)0);
 }

 if (!op && handle->pos + 2 <= handle->end) {
  op = find_instruction (handle->pos);
 }
 handle->pos += MCORE_INSTR_ALIGN;

 return op;
}
