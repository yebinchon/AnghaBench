
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GucSource ;


 int ERROR ;
 int GUC_check_errdetail (char*) ;
 char* guc_malloc (int ,int) ;
 int strlen (char*) ;
 int strspn (char*,char*) ;

__attribute__((used)) static bool
check_backtrace_functions(char **newval, void **extra, GucSource source)
{
 int newvallen = strlen(*newval);
 char *someval;
 int validlen;
 int i;
 int j;





 validlen = strspn(*newval,
       "0123456789_"
       "abcdefghijklmnopqrstuvwxyz"
       "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
       ", \n\t");
 if (validlen != newvallen)
 {
  GUC_check_errdetail("invalid character");
  return 0;
 }

 if (*newval[0] == '\0')
 {
  *extra = ((void*)0);
  return 1;
 }






 someval = guc_malloc(ERROR, newvallen + 1 + 1);
 for (i = 0, j = 0; i < newvallen; i++)
 {
  if ((*newval)[i] == ',')
   someval[j++] = '\0';
  else if ((*newval)[i] == ' ' ||
     (*newval)[i] == '\n' ||
     (*newval)[i] == '\t')
   ;
  else
   someval[j++] = (*newval)[i];
 }


 someval[j] = '\0';
 someval[j + 1] = '\0';

 *extra = someval;
 return 1;
}
