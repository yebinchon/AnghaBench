
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* keyword; char* val; } ;
typedef TYPE_1__ PQconninfoOption ;


 TYPE_1__* PQconndefaults () ;
 TYPE_1__* PQconninfoParse (char*,char**) ;
 int fprintf (int ,char*,...) ;
 int printf (char*,...) ;
 int stderr ;
 scalar_t__ strcmp (char*,char*) ;

int
main(int argc, char *argv[])
{
 PQconninfoOption *opts;
 PQconninfoOption *defs;
 PQconninfoOption *opt;
 PQconninfoOption *def;
 char *errmsg = ((void*)0);
 bool local = 1;

 if (argc != 2)
  return 1;

 opts = PQconninfoParse(argv[1], &errmsg);
 if (opts == ((void*)0))
 {
  fprintf(stderr, "uri-regress: %s", errmsg);
  return 1;
 }

 defs = PQconndefaults();
 if (defs == ((void*)0))
 {
  fprintf(stderr, "uri-regress: cannot fetch default options\n");
  return 1;
 }







 for (opt = opts, def = defs; opt->keyword; ++opt, ++def)
 {
  if (opt->val != ((void*)0))
  {
   if (def->val == ((void*)0) || strcmp(opt->val, def->val) != 0)
    printf("%s='%s' ", opt->keyword, opt->val);
   if (*opt->val &&
    (strcmp(opt->keyword, "hostaddr") == 0 ||
     (strcmp(opt->keyword, "host") == 0 && *opt->val != '/')))
   {
    local = 0;
   }
  }
 }

 if (local)
  printf("(local)\n");
 else
  printf("(inet)\n");

 return 0;
}
