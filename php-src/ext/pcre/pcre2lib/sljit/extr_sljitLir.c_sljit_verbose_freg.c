
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sljit_compiler {scalar_t__ fscratches; int verbose; } ;
typedef scalar_t__ sljit_s32 ;


 scalar_t__ SLJIT_FR0 ;
 scalar_t__ SLJIT_NUMBER_OF_FLOAT_REGISTERS ;
 int fprintf (int ,char*,scalar_t__) ;

__attribute__((used)) static void sljit_verbose_freg(struct sljit_compiler *compiler, sljit_s32 r)
{
 if (r < (SLJIT_FR0 + compiler->fscratches))
  fprintf(compiler->verbose, "fr%d", r - SLJIT_FR0);
 else
  fprintf(compiler->verbose, "fs%d", SLJIT_NUMBER_OF_FLOAT_REGISTERS - r);
}
