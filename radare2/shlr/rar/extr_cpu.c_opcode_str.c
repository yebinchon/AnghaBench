
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {char const* name; } ;


 int NOPS ;
 TYPE_1__* opcodes ;

__attribute__((used)) static inline const char *opcode_str (int n) {
 if (n>=0 && n<NOPS)
  return opcodes[n].name;
 return ((void*)0);
}
