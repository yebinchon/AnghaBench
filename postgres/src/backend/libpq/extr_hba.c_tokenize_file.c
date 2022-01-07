
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int rawline ;
struct TYPE_9__ {int line_num; char* err_msg; int raw_line; struct TYPE_9__* fields; } ;
typedef TYPE_1__ TokenizedLine ;
typedef int MemoryContext ;
typedef TYPE_1__ List ;
typedef int FILE ;


 int ALLOCSET_SMALL_SIZES ;
 int AllocSetContextCreate (int ,char*,int ) ;
 int CurrentMemoryContext ;
 int ERRCODE_CONFIG_FILE_ERROR ;
 int MAX_LINE ;
 int MemoryContextSwitchTo (int ) ;
 TYPE_1__* NIL ;
 int ereport (int,int ) ;
 int errcode (int ) ;
 int errcode_for_file_access () ;
 int errcontext (char*,int,char const*) ;
 int errmsg (char*,...) ;
 int errno ;
 int feof (int *) ;
 int ferror (int *) ;
 int fgets (char*,int,int *) ;
 TYPE_1__* lappend (TYPE_1__*,TYPE_1__*) ;
 TYPE_1__* next_field_expand (char const*,char**,int,char**) ;
 scalar_t__ palloc (int) ;
 char* psprintf (char*,char const*,int ) ;
 int pstrdup (char*) ;
 int strerror (int) ;
 int strlen (char*) ;

__attribute__((used)) static MemoryContext
tokenize_file(const char *filename, FILE *file, List **tok_lines, int elevel)
{
 int line_number = 1;
 MemoryContext linecxt;
 MemoryContext oldcxt;

 linecxt = AllocSetContextCreate(CurrentMemoryContext,
         "tokenize_file",
         ALLOCSET_SMALL_SIZES);
 oldcxt = MemoryContextSwitchTo(linecxt);

 *tok_lines = NIL;

 while (!feof(file) && !ferror(file))
 {
  char rawline[MAX_LINE];
  char *lineptr;
  List *current_line = NIL;
  char *err_msg = ((void*)0);

  if (!fgets(rawline, sizeof(rawline), file))
  {
   int save_errno = errno;

   if (!ferror(file))
    break;

   ereport(elevel,
     (errcode_for_file_access(),
      errmsg("could not read file \"%s\": %m", filename)));
   err_msg = psprintf("could not read file \"%s\": %s",
          filename, strerror(save_errno));
   rawline[0] = '\0';
  }
  if (strlen(rawline) == MAX_LINE - 1)
  {

   ereport(elevel,
     (errcode(ERRCODE_CONFIG_FILE_ERROR),
      errmsg("authentication file line too long"),
      errcontext("line %d of configuration file \"%s\"",
        line_number, filename)));
   err_msg = "authentication file line too long";
  }


  lineptr = rawline + strlen(rawline) - 1;
  while (lineptr >= rawline && (*lineptr == '\n' || *lineptr == '\r'))
   *lineptr-- = '\0';


  lineptr = rawline;
  while (*lineptr && err_msg == ((void*)0))
  {
   List *current_field;

   current_field = next_field_expand(filename, &lineptr,
             elevel, &err_msg);

   if (current_field != NIL)
    current_line = lappend(current_line, current_field);
  }


  if (current_line != NIL || err_msg != ((void*)0))
  {
   TokenizedLine *tok_line;

   tok_line = (TokenizedLine *) palloc(sizeof(TokenizedLine));
   tok_line->fields = current_line;
   tok_line->line_num = line_number;
   tok_line->raw_line = pstrdup(rawline);
   tok_line->err_msg = err_msg;
   *tok_lines = lappend(*tok_lines, tok_line);
  }

  line_number++;
 }

 MemoryContextSwitchTo(oldcxt);

 return linecxt;
}
