
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int pg_wchar ;
typedef int errstr ;
struct TYPE_8__ {int line_num; scalar_t__ fields; } ;
typedef TYPE_1__ TokenizedLine ;
struct TYPE_10__ {int string; } ;
struct TYPE_9__ {int linenumber; char* ident_user; int re; void* pg_role; void* usermap; } ;
typedef int ListCell ;
typedef int List ;
typedef TYPE_2__ IdentLine ;
typedef TYPE_3__ HbaToken ;


 int Assert (int) ;
 int C_COLLATION_OID ;
 int ERRCODE_INVALID_REGULAR_EXPRESSION ;
 int IDENT_FIELD_ABSENT (int *) ;
 int IDENT_MULTI_VALUE (int *) ;
 int LOG ;
 scalar_t__ NIL ;
 int REG_ADVANCED ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*,char*) ;
 int * lfirst (int *) ;
 TYPE_3__* linitial (int *) ;
 int * list_head (scalar_t__) ;
 int * lnext (scalar_t__,int *) ;
 int * palloc (int) ;
 TYPE_2__* palloc0 (int) ;
 int pfree (int *) ;
 int pg_mb2wchar_with_len (char*,int *,int) ;
 int pg_regcomp (int *,int *,int,int ,int ) ;
 int pg_regerror (int,int *,char*,int) ;
 void* pstrdup (int ) ;
 int strlen (char*) ;

__attribute__((used)) static IdentLine *
parse_ident_line(TokenizedLine *tok_line)
{
 int line_num = tok_line->line_num;
 ListCell *field;
 List *tokens;
 HbaToken *token;
 IdentLine *parsedline;

 Assert(tok_line->fields != NIL);
 field = list_head(tok_line->fields);

 parsedline = palloc0(sizeof(IdentLine));
 parsedline->linenumber = line_num;


 tokens = lfirst(field);
 IDENT_MULTI_VALUE(tokens);
 token = linitial(tokens);
 parsedline->usermap = pstrdup(token->string);


 field = lnext(tok_line->fields, field);
 IDENT_FIELD_ABSENT(field);
 tokens = lfirst(field);
 IDENT_MULTI_VALUE(tokens);
 token = linitial(tokens);
 parsedline->ident_user = pstrdup(token->string);


 field = lnext(tok_line->fields, field);
 IDENT_FIELD_ABSENT(field);
 tokens = lfirst(field);
 IDENT_MULTI_VALUE(tokens);
 token = linitial(tokens);
 parsedline->pg_role = pstrdup(token->string);

 if (parsedline->ident_user[0] == '/')
 {




  int r;
  pg_wchar *wstr;
  int wlen;

  wstr = palloc((strlen(parsedline->ident_user + 1) + 1) * sizeof(pg_wchar));
  wlen = pg_mb2wchar_with_len(parsedline->ident_user + 1,
         wstr, strlen(parsedline->ident_user + 1));

  r = pg_regcomp(&parsedline->re, wstr, wlen, REG_ADVANCED, C_COLLATION_OID);
  if (r)
  {
   char errstr[100];

   pg_regerror(r, &parsedline->re, errstr, sizeof(errstr));
   ereport(LOG,
     (errcode(ERRCODE_INVALID_REGULAR_EXPRESSION),
      errmsg("invalid regular expression \"%s\": %s",
       parsedline->ident_user + 1, errstr)));

   pfree(wstr);
   return ((void*)0);
  }
  pfree(wstr);
 }

 return parsedline;
}
