
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int oidvector ;
struct TYPE_5__ {scalar_t__ objectSubId; int objectId; int classId; } ;
typedef int Oid ;
typedef TYPE_1__ ObjectAddress ;


 int BOOTSTRAP_SUPERUSERID ;
 int DEPENDENCY_INTERNAL ;
 int F_FMGR_INTERNAL_VALIDATOR ;
 int INTERNALlanguageId ;
 int InvalidOid ;
 int NIL ;
 int PROKIND_FUNCTION ;
 int PROPARALLEL_SAFE ;
 int PROVOLATILE_IMMUTABLE ;
 int PointerGetDatum (int *) ;
 TYPE_1__ ProcedureCreate (char const*,int ,int,int,int ,int ,int ,int ,char const* const,int *,int ,int,int,int,int ,int ,int *,int ,int ,int ,int ,int ,int ,int ,double,double) ;
 int TEXTOID ;
 int TypeRelationId ;
 int * buildoidvector (int *,int const) ;
 int lengthof (char const* const*) ;
 int recordDependencyOn (TYPE_1__*,TYPE_1__*,int ) ;

__attribute__((used)) static void
makeRangeConstructors(const char *name, Oid namespace,
       Oid rangeOid, Oid subtype)
{
 static const char *const prosrc[2] = {"range_constructor2",
 "range_constructor3"};
 static const int pronargs[2] = {2, 3};

 Oid constructorArgTypes[3];
 ObjectAddress myself,
    referenced;
 int i;

 constructorArgTypes[0] = subtype;
 constructorArgTypes[1] = subtype;
 constructorArgTypes[2] = TEXTOID;

 referenced.classId = TypeRelationId;
 referenced.objectId = rangeOid;
 referenced.objectSubId = 0;

 for (i = 0; i < lengthof(prosrc); i++)
 {
  oidvector *constructorArgTypesVector;

  constructorArgTypesVector = buildoidvector(constructorArgTypes,
               pronargs[i]);

  myself = ProcedureCreate(name,
         namespace,
         0,
         0,
         rangeOid,
         BOOTSTRAP_SUPERUSERID,
         INTERNALlanguageId,
         F_FMGR_INTERNAL_VALIDATOR,
         prosrc[i],
         ((void*)0),
         PROKIND_FUNCTION,
         0,
         0,
         0,
         PROVOLATILE_IMMUTABLE,
         PROPARALLEL_SAFE,
         constructorArgTypesVector,
         PointerGetDatum(((void*)0)),
         PointerGetDatum(((void*)0)),
         PointerGetDatum(((void*)0)),
         NIL,
         PointerGetDatum(((void*)0)),
         PointerGetDatum(((void*)0)),
         InvalidOid,
         1.0,
         0.0);






  recordDependencyOn(&myself, &referenced, DEPENDENCY_INTERNAL);
 }
}
