
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd {scalar_t__ c_bell; int (* c_handler ) (int,char**) ;scalar_t__ c_conn; } ;
struct TYPE_2__ {char* mac_start; char const* mac_end; int mac_name; } ;


 scalar_t__ bell ;
 struct cmd* c ;
 int code ;
 int connected ;
 int fflush (int ) ;
 int gets (char*) ;
 int isdigit (char const) ;
 scalar_t__ isspace (char const) ;
 char* line ;
 int macnum ;
 TYPE_1__* macros ;
 int makeargv () ;
 int margc ;
 char** margv ;
 int printf (char*,...) ;
 int putchar (char) ;
 int stdout ;
 int strcat (char*,char*) ;
 int strcpy (char*,char const*) ;
 size_t strlen (char const*) ;
 int strncmp (char const*,int ,int) ;
 int stub1 (int,char**) ;
 scalar_t__ verbose ;

void domacro(int argc, const char *argv[])
{
 int i, j;
 const char *cp1;
    char *cp2;
 int count = 2, loopflg = 0;
 char line2[200];
 struct cmd *getcmd(), *c;

 if (argc < 2) {
  (void) strcat(line, " ");
  printf("(macro name) ");
  (void) fflush(stdout);
  (void) gets(&line[strlen(line)]);
  makeargv();
  argc = margc;
  argv = margv;
 }
 if (argc < 2) {
  printf("Usage: %s macro_name.\n", argv[0]);
  (void) fflush(stdout);
  code = -1;
  return;
 }
 for (i = 0; i < macnum; ++i) {
  if (!strncmp(argv[1], macros[i].mac_name, 9)) {
   break;
  }
 }
 if (i == macnum) {
  printf("'%s' macro not found.\n", argv[1]);
  (void) fflush(stdout);
  code = -1;
  return;
 }
 (void) strcpy(line2, line);
TOP:
 cp1 = macros[i].mac_start;
 while (cp1 != macros[i].mac_end) {
  while (isspace(*cp1)) {
   cp1++;
  }
  cp2 = line;
  while (*cp1 != '\0') {
        switch(*cp1) {
          case '\\':
     *cp2++ = *++cp1;
     break;
       case '$':
     if (isdigit(*(cp1+1))) {
        j = 0;
        while (isdigit(*++cp1)) {
       j = 10*j + *cp1 - '0';
        }
        cp1--;
        if (argc - 2 >= j) {
     (void) strcpy(cp2, argv[j+1]);
     cp2 += strlen(argv[j+1]);
        }
        break;
     }
     if (*(cp1+1) == 'i') {
     loopflg = 1;
     cp1++;
     if (count < argc) {
        (void) strcpy(cp2, argv[count]);
        cp2 += strlen(argv[count]);
     }
     break;
    }

       default:
    *cp2++ = *cp1;
    break;
        }
        if (*cp1 != '\0') {
    cp1++;
        }
  }
  *cp2 = '\0';
  makeargv();
  c = getcmd(margv[0]);
  if (c == (struct cmd *)-1) {
   printf("?Ambiguous command\n");
   code = -1;
  }
  else if (c == 0) {
   printf("?Invalid command\n");
   code = -1;
  }
  else if (c->c_conn && !connected) {
   printf("Not connected.\n");
   code = -1;
  }
  else {
   if (verbose) {
    printf("%s\n",line);
   }
   (*c->c_handler)(margc, margv);
   if (bell && c->c_bell) {
    (void) putchar('\007');
   }
   (void) strcpy(line, line2);
   makeargv();
   argc = margc;
   argv = margv;
  }
  if (cp1 != macros[i].mac_end) {
   cp1++;
  }
  (void) fflush(stdout);
 }
 if (loopflg && ++count < argc) {
  goto TOP;
 }
}
