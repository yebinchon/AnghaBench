
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sljit_compiler {int * verbose; } ;
typedef int FILE ;



void sljit_compiler_verbose(struct sljit_compiler *compiler, FILE* verbose)
{
 compiler->verbose = verbose;
}
