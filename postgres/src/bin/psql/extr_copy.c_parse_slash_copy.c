
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct copy_options {int from; int program; int psql_inout; void* after_tofrom; int * file; void* before_tofrom; } ;
struct TYPE_2__ {int encoding; } ;


 int expand_tilde (int **) ;
 int free_copy_options (struct copy_options*) ;
 int pg_log_error (char*,...) ;
 struct copy_options* pg_malloc0 (int) ;
 scalar_t__ pg_strcasecmp (char*,char*) ;
 void* pg_strdup (char*) ;
 TYPE_1__ pset ;
 scalar_t__ standard_strings () ;
 int strip_quotes (char*,char,int ,int ) ;
 int strlen (char*) ;
 char* strtokx (char const*,char const*,char*,char*,char,int,int,int ) ;
 int xstrcat (void**,char*) ;

__attribute__((used)) static struct copy_options *
parse_slash_copy(const char *args)
{
 struct copy_options *result;
 char *token;
 const char *whitespace = " \t\n\r";
 char nonstd_backslash = standard_strings() ? 0 : '\\';

 if (!args)
 {
  pg_log_error("\\copy: arguments required");
  return ((void*)0);
 }

 result = pg_malloc0(sizeof(struct copy_options));

 result->before_tofrom = pg_strdup("");

 token = strtokx(args, whitespace, ".,()", "\"",
     0, 0, 0, pset.encoding);
 if (!token)
  goto error;


 if (pg_strcasecmp(token, "binary") == 0)
 {
  xstrcat(&result->before_tofrom, token);
  token = strtokx(((void*)0), whitespace, ".,()", "\"",
      0, 0, 0, pset.encoding);
  if (!token)
   goto error;
 }


 if (token[0] == '(')
 {
  int parens = 1;

  while (parens > 0)
  {
   xstrcat(&result->before_tofrom, " ");
   xstrcat(&result->before_tofrom, token);
   token = strtokx(((void*)0), whitespace, "()", "\"'",
       nonstd_backslash, 1, 0, pset.encoding);
   if (!token)
    goto error;
   if (token[0] == '(')
    parens++;
   else if (token[0] == ')')
    parens--;
  }
 }

 xstrcat(&result->before_tofrom, " ");
 xstrcat(&result->before_tofrom, token);
 token = strtokx(((void*)0), whitespace, ".,()", "\"",
     0, 0, 0, pset.encoding);
 if (!token)
  goto error;





 if (token[0] == '.')
 {

  xstrcat(&result->before_tofrom, token);
  token = strtokx(((void*)0), whitespace, ".,()", "\"",
      0, 0, 0, pset.encoding);
  if (!token)
   goto error;
  xstrcat(&result->before_tofrom, token);
  token = strtokx(((void*)0), whitespace, ".,()", "\"",
      0, 0, 0, pset.encoding);
  if (!token)
   goto error;
 }

 if (token[0] == '(')
 {

  for (;;)
  {
   xstrcat(&result->before_tofrom, " ");
   xstrcat(&result->before_tofrom, token);
   token = strtokx(((void*)0), whitespace, "()", "\"",
       0, 0, 0, pset.encoding);
   if (!token)
    goto error;
   if (token[0] == ')')
    break;
  }
  xstrcat(&result->before_tofrom, " ");
  xstrcat(&result->before_tofrom, token);
  token = strtokx(((void*)0), whitespace, ".,()", "\"",
      0, 0, 0, pset.encoding);
  if (!token)
   goto error;
 }

 if (pg_strcasecmp(token, "from") == 0)
  result->from = 1;
 else if (pg_strcasecmp(token, "to") == 0)
  result->from = 0;
 else
  goto error;


 token = strtokx(((void*)0), whitespace, ";", "'",
     0, 0, 0, pset.encoding);
 if (!token)
  goto error;

 if (pg_strcasecmp(token, "program") == 0)
 {
  int toklen;

  token = strtokx(((void*)0), whitespace, ";", "'",
      0, 0, 0, pset.encoding);
  if (!token)
   goto error;





  toklen = strlen(token);
  if (token[0] != '\'' || toklen < 2 || token[toklen - 1] != '\'')
   goto error;

  strip_quotes(token, '\'', 0, pset.encoding);

  result->program = 1;
  result->file = pg_strdup(token);
 }
 else if (pg_strcasecmp(token, "stdin") == 0 ||
    pg_strcasecmp(token, "stdout") == 0)
 {
  result->file = ((void*)0);
 }
 else if (pg_strcasecmp(token, "pstdin") == 0 ||
    pg_strcasecmp(token, "pstdout") == 0)
 {
  result->psql_inout = 1;
  result->file = ((void*)0);
 }
 else
 {

  strip_quotes(token, '\'', 0, pset.encoding);
  result->file = pg_strdup(token);
  expand_tilde(&result->file);
 }


 token = strtokx(((void*)0), "", ((void*)0), ((void*)0),
     0, 0, 0, pset.encoding);
 if (token)
  result->after_tofrom = pg_strdup(token);

 return result;

error:
 if (token)
  pg_log_error("\\copy: parse error at \"%s\"", token);
 else
  pg_log_error("\\copy: parse error at end of line");
 free_copy_options(result);

 return ((void*)0);
}
