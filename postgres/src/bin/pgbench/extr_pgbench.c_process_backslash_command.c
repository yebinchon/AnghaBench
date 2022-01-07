
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int yyscan_t ;
struct TYPE_8__ {int argc; char** argv; scalar_t__ meta; void* first_line; int expr; int stats; int type; } ;
struct TYPE_7__ {int data; } ;
typedef int PsqlScanState ;
typedef TYPE_1__ PQExpBufferData ;
typedef TYPE_2__ Command ;


 int MAX_ARGS ;
 int META_COMMAND ;
 scalar_t__ META_ELIF ;
 scalar_t__ META_ELSE ;
 scalar_t__ META_ENDIF ;
 scalar_t__ META_GSET ;
 scalar_t__ META_IF ;
 scalar_t__ META_SET ;
 scalar_t__ META_SETSHELL ;
 scalar_t__ META_SHELL ;
 scalar_t__ META_SLEEP ;
 int exit (int) ;
 scalar_t__ expr_lex_one_word (int ,TYPE_1__*,int*) ;
 int expr_parse_result ;
 int expr_scanner_finish (int ) ;
 int expr_scanner_get_lineno (int ,int) ;
 void* expr_scanner_get_substring (int ,int,int,int) ;
 int expr_scanner_init (int ,char const*,int,int,char*) ;
 int expr_scanner_offset (int ) ;
 scalar_t__ expr_yyparse (int ) ;
 scalar_t__ getMetaCommand (char*) ;
 int initPQExpBuffer (TYPE_1__*) ;
 int initSimpleStats (int *) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ pg_malloc0 (int) ;
 scalar_t__ pg_strcasecmp (char*,char*) ;
 void* pg_strdup (int ) ;
 int syntax_error (char const*,int,void*,char*,char*,char*,int) ;
 int termPQExpBuffer (TYPE_1__*) ;

__attribute__((used)) static Command *
process_backslash_command(PsqlScanState sstate, const char *source)
{
 Command *my_command;
 PQExpBufferData word_buf;
 int word_offset;
 int offsets[MAX_ARGS];
 int start_offset;
 int lineno;
 int j;

 initPQExpBuffer(&word_buf);


 start_offset = expr_scanner_offset(sstate) - 1;
 lineno = expr_scanner_get_lineno(sstate, start_offset);


 if (!expr_lex_one_word(sstate, &word_buf, &word_offset))
 {
  termPQExpBuffer(&word_buf);
  return ((void*)0);
 }


 my_command = (Command *) pg_malloc0(sizeof(Command));
 my_command->type = META_COMMAND;
 my_command->argc = 0;
 initSimpleStats(&my_command->stats);


 j = 0;
 offsets[j] = word_offset;
 my_command->argv[j++] = pg_strdup(word_buf.data);
 my_command->argc++;


 my_command->meta = getMetaCommand(my_command->argv[0]);

 if (my_command->meta == META_SET ||
  my_command->meta == META_IF ||
  my_command->meta == META_ELIF)
 {
  yyscan_t yyscanner;


  if (my_command->meta == META_SET)
  {
   if (!expr_lex_one_word(sstate, &word_buf, &word_offset))
    syntax_error(source, lineno, my_command->first_line, my_command->argv[0],
        "missing argument", ((void*)0), -1);

   offsets[j] = word_offset;
   my_command->argv[j++] = pg_strdup(word_buf.data);
   my_command->argc++;
  }


  yyscanner = expr_scanner_init(sstate, source, lineno, start_offset,
           my_command->argv[0]);

  if (expr_yyparse(yyscanner) != 0)
  {

   exit(1);
  }

  my_command->expr = expr_parse_result;


  my_command->first_line =
   expr_scanner_get_substring(sstate,
            start_offset,
            expr_scanner_offset(sstate),
            1);

  expr_scanner_finish(yyscanner);

  termPQExpBuffer(&word_buf);

  return my_command;
 }


 while (expr_lex_one_word(sstate, &word_buf, &word_offset))
 {




  if (j >= MAX_ARGS)
   syntax_error(source, lineno, my_command->first_line, my_command->argv[0],
       "too many arguments", ((void*)0), -1);

  offsets[j] = word_offset;
  my_command->argv[j++] = pg_strdup(word_buf.data);
  my_command->argc++;
 }


 my_command->first_line =
  expr_scanner_get_substring(sstate,
           start_offset,
           expr_scanner_offset(sstate),
           1);

 if (my_command->meta == META_SLEEP)
 {
  if (my_command->argc < 2)
   syntax_error(source, lineno, my_command->first_line, my_command->argv[0],
       "missing argument", ((void*)0), -1);

  if (my_command->argc > 3)
   syntax_error(source, lineno, my_command->first_line, my_command->argv[0],
       "too many arguments", ((void*)0),
       offsets[3] - start_offset);







  if (my_command->argc == 2 && my_command->argv[1][0] != ':')
  {
   char *c = my_command->argv[1];

   while (isdigit((unsigned char) *c))
    c++;
   if (*c)
   {
    my_command->argv[2] = c;
    offsets[2] = offsets[1] + (c - my_command->argv[1]);
    my_command->argc = 3;
   }
  }

  if (my_command->argc == 3)
  {
   if (pg_strcasecmp(my_command->argv[2], "us") != 0 &&
    pg_strcasecmp(my_command->argv[2], "ms") != 0 &&
    pg_strcasecmp(my_command->argv[2], "s") != 0)
    syntax_error(source, lineno, my_command->first_line, my_command->argv[0],
        "unrecognized time unit, must be us, ms or s",
        my_command->argv[2], offsets[2] - start_offset);
  }
 }
 else if (my_command->meta == META_SETSHELL)
 {
  if (my_command->argc < 3)
   syntax_error(source, lineno, my_command->first_line, my_command->argv[0],
       "missing argument", ((void*)0), -1);
 }
 else if (my_command->meta == META_SHELL)
 {
  if (my_command->argc < 2)
   syntax_error(source, lineno, my_command->first_line, my_command->argv[0],
       "missing command", ((void*)0), -1);
 }
 else if (my_command->meta == META_ELSE || my_command->meta == META_ENDIF)
 {
  if (my_command->argc != 1)
   syntax_error(source, lineno, my_command->first_line, my_command->argv[0],
       "unexpected argument", ((void*)0), -1);
 }
 else if (my_command->meta == META_GSET)
 {
  if (my_command->argc > 2)
   syntax_error(source, lineno, my_command->first_line, my_command->argv[0],
       "too many arguments", ((void*)0), -1);
 }
 else
 {

  syntax_error(source, lineno, my_command->first_line, my_command->argv[0],
      "invalid command", ((void*)0), -1);
 }

 termPQExpBuffer(&word_buf);

 return my_command;
}
