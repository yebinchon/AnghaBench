
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PointerIsValid (char const*) ;
 int abort () ;
 int backtrace (void**,int ) ;
 int backtrace_symbols_fd (void**,int,int ) ;
 int fflush (int ) ;
 int fileno (int ) ;
 int lengthof (void**) ;
 int sleep (int) ;
 int stderr ;
 int write_stderr (char*,...) ;

void
ExceptionalCondition(const char *conditionName,
      const char *errorType,
      const char *fileName,
      int lineNumber)
{
 if (!PointerIsValid(conditionName)
  || !PointerIsValid(fileName)
  || !PointerIsValid(errorType))
  write_stderr("TRAP: ExceptionalCondition: bad arguments\n");
 else
 {
  write_stderr("TRAP: %s(\"%s\", File: \"%s\", Line: %d)\n",
      errorType, conditionName,
      fileName, lineNumber);
 }


 fflush(stderr);
 abort();
}
