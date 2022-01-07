
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Oid ;
typedef int List ;


 int Assert (int) ;
 scalar_t__ ClanguageId ;
 int ERRCODE_INVALID_FUNCTION_DEFINITION ;
 int ERROR ;
 scalar_t__ INTERNALlanguageId ;
 int * NIL ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int linitial (int *) ;
 int list_length (int *) ;
 int lsecond (int *) ;
 char* strVal (int ) ;
 scalar_t__ strcmp (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static void
interpret_AS_clause(Oid languageOid, const char *languageName,
     char *funcname, List *as,
     char **prosrc_str_p, char **probin_str_p)
{
 Assert(as != NIL);

 if (languageOid == ClanguageId)
 {
  *probin_str_p = strVal(linitial(as));
  if (list_length(as) == 1)
   *prosrc_str_p = funcname;
  else
  {
   *prosrc_str_p = strVal(lsecond(as));
   if (strcmp(*prosrc_str_p, "-") == 0)
    *prosrc_str_p = funcname;
  }
 }
 else
 {

  *prosrc_str_p = strVal(linitial(as));
  *probin_str_p = ((void*)0);

  if (list_length(as) != 1)
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_FUNCTION_DEFINITION),
      errmsg("only one AS item needed for language \"%s\"",
       languageName)));

  if (languageOid == INTERNALlanguageId)
  {
   if (strlen(*prosrc_str_p) == 0)
    *prosrc_str_p = funcname;
  }
 }
}
