
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int buf; } ;
typedef TYPE_1__ deparse_context ;
struct TYPE_6__ {scalar_t__ constcollid; int consttype; } ;
typedef int StringInfo ;
typedef scalar_t__ Oid ;
typedef TYPE_2__ Const ;


 scalar_t__ OidIsValid (scalar_t__) ;
 int appendStringInfo (int ,char*,int ) ;
 int generate_collation_name (scalar_t__) ;
 scalar_t__ get_typcollation (int ) ;

__attribute__((used)) static void
get_const_collation(Const *constval, deparse_context *context)
{
 StringInfo buf = context->buf;

 if (OidIsValid(constval->constcollid))
 {
  Oid typcollation = get_typcollation(constval->consttype);

  if (constval->constcollid != typcollation)
  {
   appendStringInfo(buf, " COLLATE %s",
        generate_collation_name(constval->constcollid));
  }
 }
}
