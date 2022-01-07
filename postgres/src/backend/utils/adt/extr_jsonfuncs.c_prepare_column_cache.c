
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef void* int32 ;
struct TYPE_13__ {int typiofunc; int typioparam; } ;
struct TYPE_11__ {void* element_typmod; int element_type; void* element_info; } ;
struct TYPE_10__ {int * domain_info; void* base_typmod; scalar_t__ base_typid; int * tupdesc; int * record_io; } ;
struct TYPE_9__ {int * domain_info; void* base_io; void* base_typmod; scalar_t__ base_typid; } ;
struct TYPE_12__ {TYPE_3__ array; TYPE_2__ composite; TYPE_1__ domain; } ;
struct TYPE_15__ {TYPE_5__ scalar_io; int typcat; TYPE_4__ io; void* typmod; scalar_t__ typid; } ;
struct TYPE_14__ {scalar_t__ typtype; int typlen; int typelem; } ;
typedef scalar_t__ Oid ;
typedef int MemoryContext ;
typedef int HeapTuple ;
typedef TYPE_6__* Form_pg_type ;
typedef TYPE_7__ ColumnIOData ;


 int ERROR ;
 scalar_t__ GETSTRUCT (int ) ;
 int HeapTupleIsValid (int ) ;
 void* MemoryContextAllocZero (int ,int) ;
 int ObjectIdGetDatum (scalar_t__) ;
 scalar_t__ OidIsValid (int ) ;
 scalar_t__ RECORDOID ;
 int ReleaseSysCache (int ) ;
 int SearchSysCache1 (int ,int ) ;
 int TYPECAT_ARRAY ;
 int TYPECAT_COMPOSITE ;
 int TYPECAT_COMPOSITE_DOMAIN ;
 int TYPECAT_DOMAIN ;
 int TYPECAT_SCALAR ;
 int TYPEOID ;
 scalar_t__ TYPTYPE_COMPOSITE ;
 scalar_t__ TYPTYPE_DOMAIN ;
 int elog (int ,char*,scalar_t__) ;
 int fmgr_info_cxt (scalar_t__,int *,int ) ;
 scalar_t__ getBaseTypeAndTypmod (scalar_t__,void**) ;
 int getTypeInputInfo (scalar_t__,scalar_t__*,int *) ;
 scalar_t__ get_typtype (scalar_t__) ;

__attribute__((used)) static void
prepare_column_cache(ColumnIOData *column,
      Oid typid,
      int32 typmod,
      MemoryContext mcxt,
      bool need_scalar)
{
 HeapTuple tup;
 Form_pg_type type;

 column->typid = typid;
 column->typmod = typmod;

 tup = SearchSysCache1(TYPEOID, ObjectIdGetDatum(typid));
 if (!HeapTupleIsValid(tup))
  elog(ERROR, "cache lookup failed for type %u", typid);

 type = (Form_pg_type) GETSTRUCT(tup);

 if (type->typtype == TYPTYPE_DOMAIN)
 {




  Oid base_typid;
  int32 base_typmod = typmod;

  base_typid = getBaseTypeAndTypmod(typid, &base_typmod);
  if (get_typtype(base_typid) == TYPTYPE_COMPOSITE)
  {

   column->typcat = TYPECAT_COMPOSITE_DOMAIN;
   column->io.composite.record_io = ((void*)0);
   column->io.composite.tupdesc = ((void*)0);
   column->io.composite.base_typid = base_typid;
   column->io.composite.base_typmod = base_typmod;
   column->io.composite.domain_info = ((void*)0);
  }
  else
  {

   column->typcat = TYPECAT_DOMAIN;
   column->io.domain.base_typid = base_typid;
   column->io.domain.base_typmod = base_typmod;
   column->io.domain.base_io =
    MemoryContextAllocZero(mcxt, sizeof(ColumnIOData));
   column->io.domain.domain_info = ((void*)0);
  }
 }
 else if (type->typtype == TYPTYPE_COMPOSITE || typid == RECORDOID)
 {
  column->typcat = TYPECAT_COMPOSITE;
  column->io.composite.record_io = ((void*)0);
  column->io.composite.tupdesc = ((void*)0);
  column->io.composite.base_typid = typid;
  column->io.composite.base_typmod = typmod;
  column->io.composite.domain_info = ((void*)0);
 }
 else if (type->typlen == -1 && OidIsValid(type->typelem))
 {
  column->typcat = TYPECAT_ARRAY;
  column->io.array.element_info = MemoryContextAllocZero(mcxt,
                  sizeof(ColumnIOData));
  column->io.array.element_type = type->typelem;

  column->io.array.element_typmod = typmod;
 }
 else
 {
  column->typcat = TYPECAT_SCALAR;
  need_scalar = 1;
 }


 if (need_scalar)
 {
  Oid typioproc;

  getTypeInputInfo(typid, &typioproc, &column->scalar_io.typioparam);
  fmgr_info_cxt(typioproc, &column->scalar_io.typiofunc, mcxt);
 }

 ReleaseSysCache(tup);
}
