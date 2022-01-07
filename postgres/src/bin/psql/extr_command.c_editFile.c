
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int Assert (int ) ;
 char* DEFAULT_EDITOR ;
 char* DEFAULT_EDITOR_LINENUMBER_ARG ;
 int free (char*) ;
 char* getenv (char*) ;
 int pg_log_error (char*,...) ;
 char* psprintf (char*,char const*,char const*,...) ;
 int system (char*) ;

__attribute__((used)) static bool
editFile(const char *fname, int lineno)
{
 const char *editorName;
 const char *editor_lineno_arg = ((void*)0);
 char *sys;
 int result;

 Assert(fname != ((void*)0));


 editorName = getenv("PSQL_EDITOR");
 if (!editorName)
  editorName = getenv("EDITOR");
 if (!editorName)
  editorName = getenv("VISUAL");
 if (!editorName)
  editorName = DEFAULT_EDITOR;


 if (lineno > 0)
 {
  editor_lineno_arg = getenv("PSQL_EDITOR_LINENUMBER_ARG");




  if (!editor_lineno_arg)
  {
   pg_log_error("environment variable PSQL_EDITOR_LINENUMBER_ARG must be set to specify a line number");
   return 0;
  }
 }
 if (lineno > 0)
  sys = psprintf("exec %s %s%d '%s'",
        editorName, editor_lineno_arg, lineno, fname);
 else
  sys = psprintf("exec %s '%s'",
        editorName, fname);
 result = system(sys);
 if (result == -1)
  pg_log_error("could not start editor \"%s\"", editorName);
 else if (result == 127)
  pg_log_error("could not start /bin/sh");
 free(sys);

 return result == 0;
}
