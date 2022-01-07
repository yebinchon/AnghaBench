
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int va_list ;
typedef int message ;
typedef int eLogType ;
struct TYPE_2__ {scalar_t__ verbose; int * internal; } ;


 char* MESSAGE_WIDTH ;





 int QUERY_ALLOC ;
 char* _ (char const*) ;
 int exit (int) ;
 int fflush (int *) ;
 int fileno (int *) ;
 int fprintf (int *,char*,char*) ;
 int isatty (int ) ;
 TYPE_1__ log_opts ;
 int printf (char*,...) ;
 int * stdout ;
 int strlen (char*) ;
 int vsnprintf (char*,int,char*,int ) ;

__attribute__((used)) static void
pg_log_v(eLogType type, const char *fmt, va_list ap)
{
 char message[QUERY_ALLOC];

 vsnprintf(message, sizeof(message), _(fmt), ap);



 if (((type != 129 && type != 130) || log_opts.verbose) &&
  log_opts.internal != ((void*)0))
 {
  if (type == 130)

   fprintf(log_opts.internal, "  %s\n", message);
  else
   fprintf(log_opts.internal, "%s", message);
  fflush(log_opts.internal);
 }

 switch (type)
 {
  case 129:
   if (log_opts.verbose)
    printf("%s", message);
   break;

  case 130:

   if (isatty(fileno(stdout)))

    printf("  %s%-*.*s\r",

        strlen(message) <= MESSAGE_WIDTH - 2 ? "" : "...",
        MESSAGE_WIDTH - 2, MESSAGE_WIDTH - 2,

        strlen(message) <= MESSAGE_WIDTH - 2 ? message :
        message + strlen(message) - MESSAGE_WIDTH + 3 + 2);
   else
    printf("  %s\n", message);
   break;

  case 131:
  case 128:
   printf("%s", message);
   break;

  case 132:
   printf("\n%s", message);
   printf(_("Failure, exiting\n"));
   exit(1);
   break;

  default:
   break;
 }
 fflush(stdout);
}
