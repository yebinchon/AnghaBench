
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int * addr; scalar_t__ name; } ;


 int NUM_TRACED_VARIABLES ;
 scalar_t__ strcmp_P (char const*,scalar_t__) ;
 TYPE_1__* traced_variables ;
 int verify_traced_variables (char const*,int) ;

void remove_traced_variable(const char* name, const char* func, int line) {
    verify_traced_variables(func, line);
    for (int i = 0; i < NUM_TRACED_VARIABLES; i++) {
        if (strcmp_P(name, traced_variables[i].name) == 0) {
            traced_variables[i].name = 0;
            traced_variables[i].addr = ((void*)0);
            break;
        }
    }
}
