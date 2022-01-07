
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ pickraw; } ;
typedef int FILE ;


 TYPE_1__ cfg ;
 int fclose (int *) ;
 int * fopen (int ,char*) ;
 size_t const fwrite (char const*,int,size_t const,int *) ;
 int g_selpath ;
 int printwarn (int *) ;

__attribute__((used)) static void writesel(const char *buf, const size_t buflen)
{
 if (cfg.pickraw || !g_selpath)
  return;

 FILE *fp = fopen(g_selpath, "w");

 if (fp) {
  if (fwrite(buf, 1, buflen, fp) != buflen)
   printwarn(((void*)0));
  fclose(fp);
 } else
  printwarn(((void*)0));
}
