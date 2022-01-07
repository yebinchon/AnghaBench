
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct fmt TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int separator_zero; int * separator; } ;
struct TYPE_8__ {int separator_zero; int * separator; } ;
struct TYPE_11__ {int format; int expanded; char* csvFieldSep; int numericLocale; int tuples_only; int pager; int default_footer; void* columns; void* pager_min_lines; int * tableAttr; TYPE_2__ recordSep; TYPE_1__ fieldSep; void* border; int unicode_header_linestyle; int unicode_column_linestyle; int unicode_border_linestyle; int * line_style; } ;
struct TYPE_10__ {TYPE_4__ topt; int * title; int * nullPrint; } ;
typedef TYPE_3__ printQueryOpt ;
typedef enum printFormat { ____Placeholder_printFormat } printFormat ;
struct fmt {char const* name; int number; } ;
struct TYPE_12__ {int popt; } ;


 int Assert (int ) ;





 int PRINT_LATEX_LONGTABLE ;



 int ParseVariableBool (char const*,char const*,int*) ;
 int PsqlVarEnumError (char const*,char const*,char*) ;
 void* atoi (char const*) ;
 int free (int *) ;
 int lengthof (TYPE_6__ const*) ;
 int pg_asciiformat ;
 int pg_asciiformat_old ;
 int pg_log_error (char*,...) ;
 scalar_t__ pg_strcasecmp (char const*,char*) ;
 void* pg_strdup (char const*) ;
 scalar_t__ pg_strncasecmp (char*,char const*,size_t) ;
 int pg_utf8format ;
 int printPsetInfo (char const*,int *) ;
 TYPE_5__ pset ;
 int refresh_utf8format (TYPE_4__*) ;
 scalar_t__ set_unicode_line_style (char const*,size_t,int *) ;
 scalar_t__ strcmp (char const*,char*) ;
 int strlen (char const*) ;

bool
do_pset(const char *param, const char *value, printQueryOpt *popt, bool quiet)
{
 size_t vallen = 0;

 Assert(param != ((void*)0));

 if (value)
  vallen = strlen(value);


 if (strcmp(param, "format") == 0)
 {
  static const struct fmt
  {
   const char *name;
   enum printFormat number;
  } formats[] =
  {

   {"aligned", 135},
   {"asciidoc", 134},
   {"csv", 133},
   {"html", 132},
   {"latex", 131},
   {"troff-ms", 130},
   {"unaligned", 129},
   {"wrapped", 128}
  };

  if (!value)
   ;
  else
  {
   int match_pos = -1;

   for (int i = 0; i < lengthof(formats); i++)
   {
    if (pg_strncasecmp(formats[i].name, value, vallen) == 0)
    {
     if (match_pos < 0)
      match_pos = i;
     else
     {
      pg_log_error("\\pset: ambiguous abbreviation \"%s\" matches both \"%s\" and \"%s\"",
          value,
          formats[match_pos].name, formats[i].name);
      return 0;
     }
    }
   }
   if (match_pos >= 0)
    popt->topt.format = formats[match_pos].number;
   else if (pg_strncasecmp("latex-longtable", value, vallen) == 0)
   {





    popt->topt.format = PRINT_LATEX_LONGTABLE;
   }
   else
   {
    pg_log_error("\\pset: allowed formats are aligned, asciidoc, csv, html, latex, latex-longtable, troff-ms, unaligned, wrapped");
    return 0;
   }
  }
 }


 else if (strcmp(param, "linestyle") == 0)
 {
  if (!value)
   ;
  else if (pg_strncasecmp("ascii", value, vallen) == 0)
   popt->topt.line_style = &pg_asciiformat;
  else if (pg_strncasecmp("old-ascii", value, vallen) == 0)
   popt->topt.line_style = &pg_asciiformat_old;
  else if (pg_strncasecmp("unicode", value, vallen) == 0)
   popt->topt.line_style = &pg_utf8format;
  else
  {
   pg_log_error("\\pset: allowed line styles are ascii, old-ascii, unicode");
   return 0;
  }
 }


 else if (strcmp(param, "unicode_border_linestyle") == 0)
 {
  if (!value)
   ;
  else if (set_unicode_line_style(value, vallen,
          &popt->topt.unicode_border_linestyle))
   refresh_utf8format(&(popt->topt));
  else
  {
   pg_log_error("\\pset: allowed Unicode border line styles are single, double");
   return 0;
  }
 }


 else if (strcmp(param, "unicode_column_linestyle") == 0)
 {
  if (!value)
   ;
  else if (set_unicode_line_style(value, vallen,
          &popt->topt.unicode_column_linestyle))
   refresh_utf8format(&(popt->topt));
  else
  {
   pg_log_error("\\pset: allowed Unicode column line styles are single, double");
   return 0;
  }
 }


 else if (strcmp(param, "unicode_header_linestyle") == 0)
 {
  if (!value)
   ;
  else if (set_unicode_line_style(value, vallen,
          &popt->topt.unicode_header_linestyle))
   refresh_utf8format(&(popt->topt));
  else
  {
   pg_log_error("\\pset: allowed Unicode header line styles are single, double");
   return 0;
  }
 }


 else if (strcmp(param, "border") == 0)
 {
  if (value)
   popt->topt.border = atoi(value);
 }


 else if (strcmp(param, "x") == 0 ||
    strcmp(param, "expanded") == 0 ||
    strcmp(param, "vertical") == 0)
 {
  if (value && pg_strcasecmp(value, "auto") == 0)
   popt->topt.expanded = 2;
  else if (value)
  {
   bool on_off;

   if (ParseVariableBool(value, ((void*)0), &on_off))
    popt->topt.expanded = on_off ? 1 : 0;
   else
   {
    PsqlVarEnumError(param, value, "on, off, auto");
    return 0;
   }
  }
  else
   popt->topt.expanded = !popt->topt.expanded;
 }


 else if (strcmp(param, "csv_fieldsep") == 0)
 {
  if (value)
  {

   if (strlen(value) != 1)
   {
    pg_log_error("\\pset: csv_fieldsep must be a single one-byte character");
    return 0;
   }
   if (value[0] == '"' || value[0] == '\n' || value[0] == '\r')
   {
    pg_log_error("\\pset: csv_fieldsep cannot be a double quote, a newline, or a carriage return");
    return 0;
   }
   popt->topt.csvFieldSep[0] = value[0];
  }
 }


 else if (strcmp(param, "numericlocale") == 0)
 {
  if (value)
   return ParseVariableBool(value, param, &popt->topt.numericLocale);
  else
   popt->topt.numericLocale = !popt->topt.numericLocale;
 }


 else if (strcmp(param, "null") == 0)
 {
  if (value)
  {
   free(popt->nullPrint);
   popt->nullPrint = pg_strdup(value);
  }
 }


 else if (strcmp(param, "fieldsep") == 0)
 {
  if (value)
  {
   free(popt->topt.fieldSep.separator);
   popt->topt.fieldSep.separator = pg_strdup(value);
   popt->topt.fieldSep.separator_zero = 0;
  }
 }

 else if (strcmp(param, "fieldsep_zero") == 0)
 {
  free(popt->topt.fieldSep.separator);
  popt->topt.fieldSep.separator = ((void*)0);
  popt->topt.fieldSep.separator_zero = 1;
 }


 else if (strcmp(param, "recordsep") == 0)
 {
  if (value)
  {
   free(popt->topt.recordSep.separator);
   popt->topt.recordSep.separator = pg_strdup(value);
   popt->topt.recordSep.separator_zero = 0;
  }
 }

 else if (strcmp(param, "recordsep_zero") == 0)
 {
  free(popt->topt.recordSep.separator);
  popt->topt.recordSep.separator = ((void*)0);
  popt->topt.recordSep.separator_zero = 1;
 }


 else if (strcmp(param, "t") == 0 || strcmp(param, "tuples_only") == 0)
 {
  if (value)
   return ParseVariableBool(value, param, &popt->topt.tuples_only);
  else
   popt->topt.tuples_only = !popt->topt.tuples_only;
 }


 else if (strcmp(param, "C") == 0 || strcmp(param, "title") == 0)
 {
  free(popt->title);
  if (!value)
   popt->title = ((void*)0);
  else
   popt->title = pg_strdup(value);
 }


 else if (strcmp(param, "T") == 0 || strcmp(param, "tableattr") == 0)
 {
  free(popt->topt.tableAttr);
  if (!value)
   popt->topt.tableAttr = ((void*)0);
  else
   popt->topt.tableAttr = pg_strdup(value);
 }


 else if (strcmp(param, "pager") == 0)
 {
  if (value && pg_strcasecmp(value, "always") == 0)
   popt->topt.pager = 2;
  else if (value)
  {
   bool on_off;

   if (!ParseVariableBool(value, ((void*)0), &on_off))
   {
    PsqlVarEnumError(param, value, "on, off, always");
    return 0;
   }
   popt->topt.pager = on_off ? 1 : 0;
  }
  else if (popt->topt.pager == 1)
   popt->topt.pager = 0;
  else
   popt->topt.pager = 1;
 }


 else if (strcmp(param, "pager_min_lines") == 0)
 {
  if (value)
   popt->topt.pager_min_lines = atoi(value);
 }


 else if (strcmp(param, "footer") == 0)
 {
  if (value)
   return ParseVariableBool(value, param, &popt->topt.default_footer);
  else
   popt->topt.default_footer = !popt->topt.default_footer;
 }


 else if (strcmp(param, "columns") == 0)
 {
  if (value)
   popt->topt.columns = atoi(value);
 }
 else
 {
  pg_log_error("\\pset: unknown option: %s", param);
  return 0;
 }

 if (!quiet)
  printPsetInfo(param, &pset.popt);

 return 1;
}
