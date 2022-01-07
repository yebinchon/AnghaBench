
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int TypeName ;
struct TYPE_3__ {int objname; int objargs; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectWithArgs ;


 int Assert (int) ;
 int InvalidOid ;
 int LookupOperName (int *,int ,int ,int ,int,int) ;
 int LookupTypeNameOid (int *,int *,int) ;
 int * linitial (int ) ;
 int list_length (int ) ;
 int * lsecond (int ) ;

Oid
LookupOperWithArgs(ObjectWithArgs *oper, bool noError)
{
 TypeName *oprleft,
      *oprright;
 Oid leftoid,
    rightoid;

 Assert(list_length(oper->objargs) == 2);
 oprleft = linitial(oper->objargs);
 oprright = lsecond(oper->objargs);

 if (oprleft == ((void*)0))
  leftoid = InvalidOid;
 else
  leftoid = LookupTypeNameOid(((void*)0), oprleft, noError);

 if (oprright == ((void*)0))
  rightoid = InvalidOid;
 else
  rightoid = LookupTypeNameOid(((void*)0), oprright, noError);

 return LookupOperName(((void*)0), oper->objname, leftoid, rightoid,
        noError, -1);
}
