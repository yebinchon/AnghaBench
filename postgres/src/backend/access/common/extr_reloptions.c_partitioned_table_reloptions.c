
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bytea ;
typedef int Datum ;


 int RELOPT_KIND_PARTITIONED ;
 scalar_t__ build_reloptions (int ,int,int ,int ,int *,int ) ;

bytea *
partitioned_table_reloptions(Datum reloptions, bool validate)
{




 return (bytea *) build_reloptions(reloptions, validate,
           RELOPT_KIND_PARTITIONED,
           0, ((void*)0), 0);
}
