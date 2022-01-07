
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char const* name; unsigned int size; char const* func; int line; int * last_value; int * addr; } ;
typedef TYPE_1__ traced_variable_t ;


 unsigned int MAX_VARIABLE_TRACE_SIZE ;
 int NUM_TRACED_VARIABLES ;
 int memcpy (int *,void*,unsigned int) ;
 scalar_t__ strcmp_P (char const*,char const*) ;
 TYPE_1__* traced_variables ;
 int verify_traced_variables (char const*,int) ;
 int xprintf (char*,...) ;

void add_traced_variable(const char* name, void* addr, unsigned size, const char* func, int line) {
    verify_traced_variables(func, line);
    if (size > MAX_VARIABLE_TRACE_SIZE) {



        xprintf("Traced variable \"%s\" exceeds the maximum size %d\n", name, size);

        size = MAX_VARIABLE_TRACE_SIZE;
    }
    int index = -1;
    for (int i = 0; i < NUM_TRACED_VARIABLES; i++) {
        if (index == -1 && traced_variables[i].addr == ((void*)0)) {
            index = i;
        } else if (strcmp_P(name, traced_variables[i].name) == 0) {
            index = i;
            break;
        }
    }

    if (index == -1) {
        xprintf("You can only trace %d variables at the same time\n", NUM_TRACED_VARIABLES);
        return;
    }

    traced_variable_t* t = &traced_variables[index];
    t->name = name;
    t->addr = addr;
    t->size = size;
    t->func = func;
    t->line = line;
    memcpy(&t->last_value[0], addr, size);
}
