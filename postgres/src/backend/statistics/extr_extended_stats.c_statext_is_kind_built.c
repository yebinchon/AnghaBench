
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HeapTuple ;
typedef int AttrNumber ;


 int Anum_pg_statistic_ext_data_stxddependencies ;
 int Anum_pg_statistic_ext_data_stxdmcv ;
 int Anum_pg_statistic_ext_data_stxdndistinct ;
 int ERROR ;



 int elog (int ,char*,char) ;
 int heap_attisnull (int ,int ,int *) ;

bool
statext_is_kind_built(HeapTuple htup, char type)
{
 AttrNumber attnum;

 switch (type)
 {
  case 128:
   attnum = Anum_pg_statistic_ext_data_stxdndistinct;
   break;

  case 130:
   attnum = Anum_pg_statistic_ext_data_stxddependencies;
   break;

  case 129:
   attnum = Anum_pg_statistic_ext_data_stxdmcv;
   break;

  default:
   elog(ERROR, "unexpected statistics type requested: %d", type);
 }

 return !heap_attisnull(htup, attnum, ((void*)0));
}
