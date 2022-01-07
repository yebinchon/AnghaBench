
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_3__ {int size; char const* func; int line; int * last_value; int * addr; int * name; } ;
typedef TYPE_1__ traced_variable_t ;


 int NUM_TRACED_VARIABLES ;
 scalar_t__ memcmp (int *,int *,int) ;
 int memcpy (int *,int *,int) ;
 int print_hex8 (int ) ;
 TYPE_1__* traced_variables ;
 int xprintf (char*,...) ;

void verify_traced_variables(const char* func, int line) {
    for (int i = 0; i < NUM_TRACED_VARIABLES; i++) {
        traced_variable_t* t = &traced_variables[i];
        if (t->addr != ((void*)0) && t->name != ((void*)0)) {
            if (memcmp(t->last_value, t->addr, t->size) != 0) {






                xprintf("Traced variable \"%s\" has been modified\n", t->name);
                xprintf("Between %s:%d\n", t->func, t->line);
                xprintf("And %s:%d\n", func, line);

                xprintf("Previous value ");
                for (int j = 0; j < t->size; j++) {
                    print_hex8(t->last_value[j]);
                }
                xprintf("\nNew value ");
                uint8_t* addr = (uint8_t*)(t->addr);
                for (int j = 0; j < t->size; j++) {
                    print_hex8(addr[j]);
                }
                xprintf("\n");
                memcpy(t->last_value, addr, t->size);
            }
        }

        t->func = func;
        t->line = line;
    }
}
