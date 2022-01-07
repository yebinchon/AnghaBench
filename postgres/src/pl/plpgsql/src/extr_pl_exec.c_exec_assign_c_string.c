
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int text ;
typedef int PLpgSQL_execstate ;
typedef int PLpgSQL_datum ;
typedef int MemoryContext ;


 int MemoryContextSwitchTo (int ) ;
 int PointerGetDatum (int *) ;
 int TEXTOID ;
 int * cstring_to_text (char const*) ;
 int exec_assign_value (int *,int *,int ,int,int ,int) ;
 int get_eval_mcontext (int *) ;

__attribute__((used)) static void
exec_assign_c_string(PLpgSQL_execstate *estate, PLpgSQL_datum *target,
      const char *str)
{
 text *value;
 MemoryContext oldcontext;


 oldcontext = MemoryContextSwitchTo(get_eval_mcontext(estate));
 if (str != ((void*)0))
  value = cstring_to_text(str);
 else
  value = cstring_to_text("");
 MemoryContextSwitchTo(oldcontext);

 exec_assign_value(estate, target, PointerGetDatum(value), 0,
       TEXTOID, -1);
}
