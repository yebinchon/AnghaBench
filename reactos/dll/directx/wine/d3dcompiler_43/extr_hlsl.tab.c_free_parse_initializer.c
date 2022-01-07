
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct parse_initializer {unsigned int args_count; int * args; } ;


 int d3dcompiler_free (int *) ;
 int free_instr (int ) ;

__attribute__((used)) static void free_parse_initializer(struct parse_initializer *initializer)
{
    unsigned int i;
    for (i = 0; i < initializer->args_count; ++i)
        free_instr(initializer->args[i]);
    d3dcompiler_free(initializer->args);
}
