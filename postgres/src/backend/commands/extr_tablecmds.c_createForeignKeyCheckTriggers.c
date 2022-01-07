
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Oid ;
typedef int Constraint ;


 int CreateFKCheckTrigger (int ,int ,int *,int ,int ,int) ;

__attribute__((used)) static void
createForeignKeyCheckTriggers(Oid myRelOid, Oid refRelOid,
         Constraint *fkconstraint, Oid constraintOid,
         Oid indexOid)
{
 CreateFKCheckTrigger(myRelOid, refRelOid, fkconstraint, constraintOid,
       indexOid, 1);
 CreateFKCheckTrigger(myRelOid, refRelOid, fkconstraint, constraintOid,
       indexOid, 0);
}
