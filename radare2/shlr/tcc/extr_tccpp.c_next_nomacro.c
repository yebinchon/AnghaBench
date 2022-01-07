
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ is_space (int ) ;
 int next_nomacro_spc () ;
 scalar_t__ tcc_nerr () ;
 int tok ;

void next_nomacro(void)
{
 do {
  next_nomacro_spc ();
 } while (tcc_nerr () == 0 && is_space (tok));
}
