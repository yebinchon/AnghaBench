
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct FTW {int dummy; } ;




 int S_ISREG (int ) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;
 int walk_file (char const*,struct stat const*) ;

int walk_tree(const char *name, const struct stat *st, int type, struct FTW *f)
{
 (void)f;
 switch (type) {
 case 128:
  if (S_ISREG(st->st_mode))
   walk_file(name, st);
  break;
 case 129:
  fprintf(stderr, "cannot read dir: %s\n", name);
  break;
 }
 return 0;
}
