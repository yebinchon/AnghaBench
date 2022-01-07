
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int buf; } ;
typedef TYPE_1__ deparse_context ;
struct TYPE_6__ {int num_new_cols; char** new_colnames; int printaliases; } ;
typedef TYPE_2__ deparse_columns ;
typedef int StringInfo ;


 int appendStringInfoChar (int ,char) ;
 int appendStringInfoString (int ,char*) ;
 char* quote_identifier (char*) ;

__attribute__((used)) static void
get_column_alias_list(deparse_columns *colinfo, deparse_context *context)
{
 StringInfo buf = context->buf;
 int i;
 bool first = 1;


 if (!colinfo->printaliases)
  return;

 for (i = 0; i < colinfo->num_new_cols; i++)
 {
  char *colname = colinfo->new_colnames[i];

  if (first)
  {
   appendStringInfoChar(buf, '(');
   first = 0;
  }
  else
   appendStringInfoString(buf, ", ");
  appendStringInfoString(buf, quote_identifier(colname));
 }
 if (!first)
  appendStringInfoChar(buf, ')');
}
