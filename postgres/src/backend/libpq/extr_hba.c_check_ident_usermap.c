
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ rm_so; int rm_eo; } ;
typedef TYPE_1__ regmatch_t ;
typedef char pg_wchar ;
typedef int errstr ;
struct TYPE_6__ {char* usermap; char* ident_user; char* pg_role; int re; } ;
typedef TYPE_2__ IdentLine ;


 int ERRCODE_INVALID_REGULAR_EXPRESSION ;
 int LOG ;
 int REG_NOMATCH ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*,char*) ;
 int memcpy (char*,char const*,int) ;
 char* palloc (int) ;
 char* palloc0 (int) ;
 int pfree (char*) ;
 int pg_mb2wchar_with_len (char const*,char*,int) ;
 int pg_regerror (int,int *,char*,int) ;
 int pg_regexec (int *,char*,int,int ,int *,int,TYPE_1__*,int ) ;
 scalar_t__ pg_strcasecmp (char*,char const*) ;
 char* pstrdup (char const*) ;
 int strcat (char*,char*) ;
 scalar_t__ strcmp (char*,char const*) ;
 int strlen (char const*) ;
 char* strstr (char*,char*) ;

__attribute__((used)) static void
check_ident_usermap(IdentLine *identLine, const char *usermap_name,
     const char *pg_role, const char *ident_user,
     bool case_insensitive, bool *found_p, bool *error_p)
{
 *found_p = 0;
 *error_p = 0;

 if (strcmp(identLine->usermap, usermap_name) != 0)

  return;


 if (identLine->ident_user[0] == '/')
 {






  int r;
  regmatch_t matches[2];
  pg_wchar *wstr;
  int wlen;
  char *ofs;
  char *regexp_pgrole;

  wstr = palloc((strlen(ident_user) + 1) * sizeof(pg_wchar));
  wlen = pg_mb2wchar_with_len(ident_user, wstr, strlen(ident_user));

  r = pg_regexec(&identLine->re, wstr, wlen, 0, ((void*)0), 2, matches, 0);
  if (r)
  {
   char errstr[100];

   if (r != REG_NOMATCH)
   {

    pg_regerror(r, &identLine->re, errstr, sizeof(errstr));
    ereport(LOG,
      (errcode(ERRCODE_INVALID_REGULAR_EXPRESSION),
       errmsg("regular expression match for \"%s\" failed: %s",
        identLine->ident_user + 1, errstr)));
    *error_p = 1;
   }

   pfree(wstr);
   return;
  }
  pfree(wstr);

  if ((ofs = strstr(identLine->pg_role, "\\1")) != ((void*)0))
  {
   int offset;


   if (matches[1].rm_so < 0)
   {
    ereport(LOG,
      (errcode(ERRCODE_INVALID_REGULAR_EXPRESSION),
       errmsg("regular expression \"%s\" has no subexpressions as requested by backreference in \"%s\"",
        identLine->ident_user + 1, identLine->pg_role)));
    *error_p = 1;
    return;
   }





   regexp_pgrole = palloc0(strlen(identLine->pg_role) - 2 + (matches[1].rm_eo - matches[1].rm_so) + 1);
   offset = ofs - identLine->pg_role;
   memcpy(regexp_pgrole, identLine->pg_role, offset);
   memcpy(regexp_pgrole + offset,
       ident_user + matches[1].rm_so,
       matches[1].rm_eo - matches[1].rm_so);
   strcat(regexp_pgrole, ofs + 2);
  }
  else
  {

   regexp_pgrole = pstrdup(identLine->pg_role);
  }





  if (case_insensitive)
  {
   if (pg_strcasecmp(regexp_pgrole, pg_role) == 0)
    *found_p = 1;
  }
  else
  {
   if (strcmp(regexp_pgrole, pg_role) == 0)
    *found_p = 1;
  }
  pfree(regexp_pgrole);

  return;
 }
 else
 {

  if (case_insensitive)
  {
   if (pg_strcasecmp(identLine->pg_role, pg_role) == 0 &&
    pg_strcasecmp(identLine->ident_user, ident_user) == 0)
    *found_p = 1;
  }
  else
  {
   if (strcmp(identLine->pg_role, pg_role) == 0 &&
    strcmp(identLine->ident_user, ident_user) == 0)
    *found_p = 1;
  }
 }
 return;
}
