
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct rule {void* r_abbrvar; void* r_name; int r_isdst; int r_save; int r_linenum; int r_filename; } ;


 size_t RF_ABBRVAR ;
 size_t RF_COMMAND ;
 size_t RF_DAY ;
 size_t RF_HIYEAR ;
 size_t RF_LOYEAR ;
 size_t RF_MONTH ;
 size_t RF_NAME ;
 size_t RF_SAVE ;
 size_t RF_TOD ;
 int RULE_FIELDS ;
 int _ (char*) ;
 void* ecpyalloc (char*) ;
 int error (int ,...) ;
 int filename ;
 int getsave (char*,int *) ;
 struct rule* growalloc (struct rule*,int,int ,int *) ;
 int linenum ;
 scalar_t__ max_abbrvar_len ;
 int nrules ;
 int nrules_alloc ;
 struct rule* rules ;
 int rulesub (struct rule*,char*,char*,char*,char*,char*,char*) ;
 scalar_t__ strlen (void*) ;

__attribute__((used)) static void
inrule(char **fields, int nfields)
{
 static struct rule r;

 if (nfields != RULE_FIELDS)
 {
  error(_("wrong number of fields on Rule line"));
  return;
 }
 switch (*fields[RF_NAME])
 {
  case '\0':
  case ' ':
  case '\f':
  case '\n':
  case '\r':
  case '\t':
  case '\v':
  case '+':
  case '-':
  case '0':
  case '1':
  case '2':
  case '3':
  case '4':
  case '5':
  case '6':
  case '7':
  case '8':
  case '9':
   error(_("Invalid rule name \"%s\""), fields[RF_NAME]);
   return;
 }
 r.r_filename = filename;
 r.r_linenum = linenum;
 r.r_save = getsave(fields[RF_SAVE], &r.r_isdst);
 rulesub(&r, fields[RF_LOYEAR], fields[RF_HIYEAR], fields[RF_COMMAND],
   fields[RF_MONTH], fields[RF_DAY], fields[RF_TOD]);
 r.r_name = ecpyalloc(fields[RF_NAME]);
 r.r_abbrvar = ecpyalloc(fields[RF_ABBRVAR]);
 if (max_abbrvar_len < strlen(r.r_abbrvar))
  max_abbrvar_len = strlen(r.r_abbrvar);
 rules = growalloc(rules, sizeof *rules, nrules, &nrules_alloc);
 rules[nrules++] = r;
}
