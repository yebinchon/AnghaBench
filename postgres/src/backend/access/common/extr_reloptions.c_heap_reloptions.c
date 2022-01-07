
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int bytea ;
struct TYPE_3__ {int analyze_threshold; int analyze_scale_factor; } ;
struct TYPE_4__ {int fillfactor; TYPE_1__ autovacuum; } ;
typedef TYPE_2__ StdRdOptions ;
typedef int Datum ;





 int RELOPT_KIND_HEAP ;
 int RELOPT_KIND_TOAST ;
 int * default_reloptions (int ,int,int ) ;

bytea *
heap_reloptions(char relkind, Datum reloptions, bool validate)
{
 StdRdOptions *rdopts;

 switch (relkind)
 {
  case 128:
   rdopts = (StdRdOptions *)
    default_reloptions(reloptions, validate, RELOPT_KIND_TOAST);
   if (rdopts != ((void*)0))
   {

    rdopts->fillfactor = 100;
    rdopts->autovacuum.analyze_threshold = -1;
    rdopts->autovacuum.analyze_scale_factor = -1;
   }
   return (bytea *) rdopts;
  case 129:
  case 130:
   return default_reloptions(reloptions, validate, RELOPT_KIND_HEAP);
  default:

   return ((void*)0);
 }
}
