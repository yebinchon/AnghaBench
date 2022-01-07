
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;


 int GIST_COMPRESS_PROC ;
 int GIST_FETCH_PROC ;
 int IndexRelationGetNumberOfKeyAttributes (int ) ;
 scalar_t__ OidIsValid (int ) ;
 int index_getprocid (int ,int,int ) ;

bool
gistcanreturn(Relation index, int attno)
{
 if (attno > IndexRelationGetNumberOfKeyAttributes(index) ||
  OidIsValid(index_getprocid(index, attno, GIST_FETCH_PROC)) ||
  !OidIsValid(index_getprocid(index, attno, GIST_COMPRESS_PROC)))
  return 1;
 else
  return 0;
}
