
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* name; } ;
typedef TYPE_1__ EVAL_VARIABLE ;


 int freez (TYPE_1__*) ;

__attribute__((used)) static inline void eval_variable_free(EVAL_VARIABLE *v) {
    freez(v->name);
    freez(v);
}
