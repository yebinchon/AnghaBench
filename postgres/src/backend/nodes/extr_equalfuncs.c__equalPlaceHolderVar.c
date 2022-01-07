
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PlaceHolderVar ;


 int COMPARE_SCALAR_FIELD (int ) ;
 int phid ;
 int phlevelsup ;

__attribute__((used)) static bool
_equalPlaceHolderVar(const PlaceHolderVar *a, const PlaceHolderVar *b)
{
 COMPARE_SCALAR_FIELD(phid);
 COMPARE_SCALAR_FIELD(phlevelsup);

 return 1;
}
