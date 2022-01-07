
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int NextValueExpr ;


 int COMPARE_SCALAR_FIELD (int ) ;
 int seqid ;
 int typeId ;

__attribute__((used)) static bool
_equalNextValueExpr(const NextValueExpr *a, const NextValueExpr *b)
{
 COMPARE_SCALAR_FIELD(seqid);
 COMPARE_SCALAR_FIELD(typeId);

 return 1;
}
