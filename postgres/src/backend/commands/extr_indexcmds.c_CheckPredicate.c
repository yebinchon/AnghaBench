
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Expr ;


 scalar_t__ CheckMutability (int *) ;
 int ERRCODE_INVALID_OBJECT_DEFINITION ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*) ;

__attribute__((used)) static void
CheckPredicate(Expr *predicate)
{
 if (CheckMutability(predicate))
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_OBJECT_DEFINITION),
     errmsg("functions in index predicate must be marked IMMUTABLE")));
}
