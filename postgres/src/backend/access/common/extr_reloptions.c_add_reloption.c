
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int relopt_gen ;
typedef int MemoryContext ;


 int MemoryContextSwitchTo (int ) ;
 int TopMemoryContext ;
 int ** custom_options ;
 int need_initialization ;
 int num_custom_options ;
 int ** palloc (int) ;
 int ** repalloc (int **,int) ;

__attribute__((used)) static void
add_reloption(relopt_gen *newoption)
{
 static int max_custom_options = 0;

 if (num_custom_options >= max_custom_options)
 {
  MemoryContext oldcxt;

  oldcxt = MemoryContextSwitchTo(TopMemoryContext);

  if (max_custom_options == 0)
  {
   max_custom_options = 8;
   custom_options = palloc(max_custom_options * sizeof(relopt_gen *));
  }
  else
  {
   max_custom_options *= 2;
   custom_options = repalloc(custom_options,
           max_custom_options * sizeof(relopt_gen *));
  }
  MemoryContextSwitchTo(oldcxt);
 }
 custom_options[num_custom_options++] = newoption;

 need_initialization = 1;
}
