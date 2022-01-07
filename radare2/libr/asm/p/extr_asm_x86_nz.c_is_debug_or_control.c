
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; } ;
typedef TYPE_1__ Operand ;


 int OT_CONTROLREG ;
 int OT_DEBUGREG ;
 int OT_REGTYPE ;

__attribute__((used)) static inline bool is_debug_or_control(Operand op) {
 return (op.type & OT_REGTYPE) & (OT_CONTROLREG | OT_DEBUGREG);
}
