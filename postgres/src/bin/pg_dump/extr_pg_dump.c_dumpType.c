
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_4__ ;
typedef struct TYPE_21__ TYPE_3__ ;
typedef struct TYPE_20__ TYPE_2__ ;
typedef struct TYPE_19__ TYPE_1__ ;


struct TYPE_19__ {int name; int dump; } ;
struct TYPE_20__ {scalar_t__ typtype; TYPE_1__ dobj; int isDefined; } ;
typedef TYPE_2__ TypeInfo ;
struct TYPE_22__ {TYPE_3__* dopt; } ;
struct TYPE_21__ {scalar_t__ dataOnly; } ;
typedef TYPE_3__ DumpOptions ;
typedef TYPE_4__ Archive ;


 scalar_t__ TYPTYPE_BASE ;
 scalar_t__ TYPTYPE_COMPOSITE ;
 scalar_t__ TYPTYPE_DOMAIN ;
 scalar_t__ TYPTYPE_ENUM ;
 scalar_t__ TYPTYPE_PSEUDO ;
 scalar_t__ TYPTYPE_RANGE ;
 int dumpBaseType (TYPE_4__*,TYPE_2__*) ;
 int dumpCompositeType (TYPE_4__*,TYPE_2__*) ;
 int dumpDomain (TYPE_4__*,TYPE_2__*) ;
 int dumpEnumType (TYPE_4__*,TYPE_2__*) ;
 int dumpRangeType (TYPE_4__*,TYPE_2__*) ;
 int dumpUndefinedType (TYPE_4__*,TYPE_2__*) ;
 int pg_log_warning (char*,int ) ;

__attribute__((used)) static void
dumpType(Archive *fout, TypeInfo *tyinfo)
{
 DumpOptions *dopt = fout->dopt;


 if (!tyinfo->dobj.dump || dopt->dataOnly)
  return;


 if (tyinfo->typtype == TYPTYPE_BASE)
  dumpBaseType(fout, tyinfo);
 else if (tyinfo->typtype == TYPTYPE_DOMAIN)
  dumpDomain(fout, tyinfo);
 else if (tyinfo->typtype == TYPTYPE_COMPOSITE)
  dumpCompositeType(fout, tyinfo);
 else if (tyinfo->typtype == TYPTYPE_ENUM)
  dumpEnumType(fout, tyinfo);
 else if (tyinfo->typtype == TYPTYPE_RANGE)
  dumpRangeType(fout, tyinfo);
 else if (tyinfo->typtype == TYPTYPE_PSEUDO && !tyinfo->isDefined)
  dumpUndefinedType(fout, tyinfo);
 else
  pg_log_warning("typtype of data type \"%s\" appears to be invalid",
        tyinfo->dobj.name);
}
