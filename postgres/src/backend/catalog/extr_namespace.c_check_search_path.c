
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int List ;
typedef int GucSource ;


 int GUC_check_errdetail (char*) ;
 int SplitIdentifierString (char*,char,int **) ;
 int list_free (int *) ;
 int pfree (char*) ;
 char* pstrdup (char*) ;

bool
check_search_path(char **newval, void **extra, GucSource source)
{
 char *rawname;
 List *namelist;


 rawname = pstrdup(*newval);


 if (!SplitIdentifierString(rawname, ',', &namelist))
 {

  GUC_check_errdetail("List syntax is invalid.");
  pfree(rawname);
  list_free(namelist);
  return 0;
 }
 pfree(rawname);
 list_free(namelist);

 return 1;
}
