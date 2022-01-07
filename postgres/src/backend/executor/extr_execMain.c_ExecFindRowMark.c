
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int es_range_table_size; int ** es_rowmarks; } ;
typedef int Index ;
typedef int ExecRowMark ;
typedef TYPE_1__ EState ;


 int ERROR ;
 int elog (int ,char*,int) ;

ExecRowMark *
ExecFindRowMark(EState *estate, Index rti, bool missing_ok)
{
 if (rti > 0 && rti <= estate->es_range_table_size &&
  estate->es_rowmarks != ((void*)0))
 {
  ExecRowMark *erm = estate->es_rowmarks[rti - 1];

  if (erm)
   return erm;
 }
 if (!missing_ok)
  elog(ERROR, "failed to find ExecRowMark for rangetable index %u", rti);
 return ((void*)0);
}
