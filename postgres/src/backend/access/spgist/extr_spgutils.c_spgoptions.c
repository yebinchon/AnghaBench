
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bytea ;
typedef int Datum ;


 int RELOPT_KIND_SPGIST ;
 int * default_reloptions (int ,int,int ) ;

bytea *
spgoptions(Datum reloptions, bool validate)
{
 return default_reloptions(reloptions, validate, RELOPT_KIND_SPGIST);
}
