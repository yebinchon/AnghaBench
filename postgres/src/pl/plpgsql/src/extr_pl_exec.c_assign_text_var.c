
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PLpgSQL_var ;
typedef int PLpgSQL_execstate ;


 int CStringGetTextDatum (char const*) ;
 int assign_simple_var (int *,int *,int ,int,int) ;

__attribute__((used)) static void
assign_text_var(PLpgSQL_execstate *estate, PLpgSQL_var *var, const char *str)
{
 assign_simple_var(estate, var, CStringGetTextDatum(str), 0, 1);
}
