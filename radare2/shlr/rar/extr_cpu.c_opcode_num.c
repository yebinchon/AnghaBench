
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ name; } ;


 TYPE_1__* opcodes ;
 int strcmp (char const*,scalar_t__) ;

__attribute__((used)) static inline int opcode_num (const char *s) {
 int i;
 for (i=0; opcodes[i].name; i++)
  if (!strcmp (s, opcodes[i].name))
   return i;
 return -1;
}
