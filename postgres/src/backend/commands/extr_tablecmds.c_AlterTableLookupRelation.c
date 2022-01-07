
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ missing_ok; int relation; } ;
typedef int Oid ;
typedef int LOCKMODE ;
typedef TYPE_1__ AlterTableStmt ;


 int RVR_MISSING_OK ;
 int RangeVarCallbackForAlterRelation ;
 int RangeVarGetRelidExtended (int ,int ,int ,int ,void*) ;

Oid
AlterTableLookupRelation(AlterTableStmt *stmt, LOCKMODE lockmode)
{
 return RangeVarGetRelidExtended(stmt->relation, lockmode,
         stmt->missing_ok ? RVR_MISSING_OK : 0,
         RangeVarCallbackForAlterRelation,
         (void *) stmt);
}
