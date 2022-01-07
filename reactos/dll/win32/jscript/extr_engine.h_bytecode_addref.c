
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int ref; } ;
typedef TYPE_1__ bytecode_t ;



__attribute__((used)) static inline bytecode_t *bytecode_addref(bytecode_t *code)
{
    code->ref++;
    return code;
}
