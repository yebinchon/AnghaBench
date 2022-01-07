
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PathKey ;


 int COMPARE_SCALAR_FIELD (int ) ;
 int pk_eclass ;
 int pk_nulls_first ;
 int pk_opfamily ;
 int pk_strategy ;

__attribute__((used)) static bool
_equalPathKey(const PathKey *a, const PathKey *b)
{

 COMPARE_SCALAR_FIELD(pk_eclass);
 COMPARE_SCALAR_FIELD(pk_opfamily);
 COMPARE_SCALAR_FIELD(pk_strategy);
 COMPARE_SCALAR_FIELD(pk_nulls_first);

 return 1;
}
