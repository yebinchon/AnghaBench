
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ CMD_LEN_MAX ;
 scalar_t__ fgets (char*,scalar_t__,int *) ;
 int fprintf (int *,char*,char*) ;
 char* g_buf ;
 int pclose (int *) ;
 int * popen (char*,char*) ;

__attribute__((used)) static void pipetof(char *cmd, FILE *fout)
{
 FILE *fin = popen(cmd, "r");

 if (fin) {
  while (fgets(g_buf, CMD_LEN_MAX - 1, fin))
   fprintf(fout, "%s", g_buf);
  pclose(fin);
 }
}
