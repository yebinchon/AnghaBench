
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ut32 ;
struct TYPE_3__ {int size; int value; } ;
typedef TYPE_1__ CPU_CONST ;


 int MASK (int) ;

__attribute__((used)) static ut32 const_get_value(CPU_CONST *c) {
 return c ? MASK (c->size * 8) & c->value : 0;
}
