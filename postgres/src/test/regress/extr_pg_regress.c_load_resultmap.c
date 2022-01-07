
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int buf ;
struct TYPE_4__ {struct TYPE_4__* next; void* resultfile; void* type; void* test; } ;
typedef TYPE_1__ _resultmap ;
typedef int FILE ;


 scalar_t__ ENOENT ;
 int MAXPGPATH ;
 char* _ (char*) ;
 scalar_t__ errno ;
 int exit (int) ;
 int fclose (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 int * fopen (char*,char*) ;
 int fprintf (int ,char*,char*,...) ;
 int host_platform ;
 char* inputdir ;
 scalar_t__ isspace (unsigned char) ;
 TYPE_1__* pg_malloc (int) ;
 void* pg_strdup (char*) ;
 char* progname ;
 TYPE_1__* resultmap ;
 int snprintf (char*,int,char*,char*) ;
 int stderr ;
 char* strchr (char*,char) ;
 char* strerror (scalar_t__) ;
 scalar_t__ string_matches_pattern (int ,char*) ;
 int strlen (char*) ;

__attribute__((used)) static void
load_resultmap(void)
{
 char buf[MAXPGPATH];
 FILE *f;


 snprintf(buf, sizeof(buf), "%s/resultmap", inputdir);
 f = fopen(buf, "r");
 if (!f)
 {

  if (errno == ENOENT)
   return;
  fprintf(stderr, _("%s: could not open file \"%s\" for reading: %s\n"),
    progname, buf, strerror(errno));
  exit(2);
 }

 while (fgets(buf, sizeof(buf), f))
 {
  char *platform;
  char *file_type;
  char *expected;
  int i;


  i = strlen(buf);
  while (i > 0 && isspace((unsigned char) buf[i - 1]))
   buf[--i] = '\0';


  file_type = strchr(buf, ':');
  if (!file_type)
  {
   fprintf(stderr, _("incorrectly formatted resultmap entry: %s\n"),
     buf);
   exit(2);
  }
  *file_type++ = '\0';

  platform = strchr(file_type, ':');
  if (!platform)
  {
   fprintf(stderr, _("incorrectly formatted resultmap entry: %s\n"),
     buf);
   exit(2);
  }
  *platform++ = '\0';
  expected = strchr(platform, '=');
  if (!expected)
  {
   fprintf(stderr, _("incorrectly formatted resultmap entry: %s\n"),
     buf);
   exit(2);
  }
  *expected++ = '\0';







  if (string_matches_pattern(host_platform, platform))
  {
   _resultmap *entry = pg_malloc(sizeof(_resultmap));

   entry->test = pg_strdup(buf);
   entry->type = pg_strdup(file_type);
   entry->resultfile = pg_strdup(expected);
   entry->next = resultmap;
   resultmap = entry;
  }
 }
 fclose(f);
}
