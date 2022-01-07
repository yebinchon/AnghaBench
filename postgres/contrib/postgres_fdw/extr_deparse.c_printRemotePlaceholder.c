
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int int32 ;
struct TYPE_3__ {int buf; } ;
typedef TYPE_1__ deparse_expr_cxt ;
typedef int StringInfo ;
typedef int Oid ;


 int appendStringInfo (int ,char*,char*,char*) ;
 char* deparse_type_name (int ,int ) ;

__attribute__((used)) static void
printRemotePlaceholder(Oid paramtype, int32 paramtypmod,
        deparse_expr_cxt *context)
{
 StringInfo buf = context->buf;
 char *ptypename = deparse_type_name(paramtype, paramtypmod);

 appendStringInfo(buf, "((SELECT null::%s)::%s)", ptypename, ptypename);
}
