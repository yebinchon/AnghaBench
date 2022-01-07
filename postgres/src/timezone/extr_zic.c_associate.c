
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zone {int z_nrules; char z_format_specifier; int z_isdst; int z_rule; int z_save; int z_linenum; int z_filename; struct rule* z_rules; } ;
struct rule {int r_name; int r_filename; int r_linenum; } ;
typedef int ptrdiff_t ;


 int EXIT_FAILURE ;
 int _ (char*) ;
 int eat (int ,int ) ;
 int error (char*,int ) ;
 scalar_t__ errors ;
 int exit (int ) ;
 int getsave (int ,int *) ;
 int nrules ;
 int nzones ;
 int qsort (struct rule*,int,int,int ) ;
 int rcomp ;
 struct rule* rules ;
 scalar_t__ strcmp (int ,int ) ;
 int warning (int ) ;
 struct zone* zones ;

__attribute__((used)) static void
associate(void)
{
 struct zone *zp;
 struct rule *rp;
 ptrdiff_t i,
    j,
    base,
    out;

 if (nrules != 0)
 {
  qsort(rules, nrules, sizeof *rules, rcomp);
  for (i = 0; i < nrules - 1; ++i)
  {
   if (strcmp(rules[i].r_name,
        rules[i + 1].r_name) != 0)
    continue;
   if (strcmp(rules[i].r_filename,
        rules[i + 1].r_filename) == 0)
    continue;
   eat(rules[i].r_filename, rules[i].r_linenum);
   warning(_("same rule name in multiple files"));
   eat(rules[i + 1].r_filename, rules[i + 1].r_linenum);
   warning(_("same rule name in multiple files"));
   for (j = i + 2; j < nrules; ++j)
   {
    if (strcmp(rules[i].r_name,
         rules[j].r_name) != 0)
     break;
    if (strcmp(rules[i].r_filename,
         rules[j].r_filename) == 0)
     continue;
    if (strcmp(rules[i + 1].r_filename,
         rules[j].r_filename) == 0)
     continue;
    break;
   }
   i = j - 1;
  }
 }
 for (i = 0; i < nzones; ++i)
 {
  zp = &zones[i];
  zp->z_rules = ((void*)0);
  zp->z_nrules = 0;
 }
 for (base = 0; base < nrules; base = out)
 {
  rp = &rules[base];
  for (out = base + 1; out < nrules; ++out)
   if (strcmp(rp->r_name, rules[out].r_name) != 0)
    break;
  for (i = 0; i < nzones; ++i)
  {
   zp = &zones[i];
   if (strcmp(zp->z_rule, rp->r_name) != 0)
    continue;
   zp->z_rules = rp;
   zp->z_nrules = out - base;
  }
 }
 for (i = 0; i < nzones; ++i)
 {
  zp = &zones[i];
  if (zp->z_nrules == 0)
  {



   eat(zp->z_filename, zp->z_linenum);
   zp->z_save = getsave(zp->z_rule, &zp->z_isdst);





   if (zp->z_format_specifier == 's')
    error("%s", _("%s in ruleless zone"));
  }
 }
 if (errors)
  exit(EXIT_FAILURE);
}
