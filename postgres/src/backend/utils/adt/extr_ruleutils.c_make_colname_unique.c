
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int deparse_namespace ;
typedef int deparse_columns ;


 scalar_t__ NAMEDATALEN ;
 int colname_is_unique (char*,int *,int *) ;
 int memcpy (char*,char*,int) ;
 scalar_t__ palloc (int) ;
 int pg_mbcliplen (char*,int,int) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static char *
make_colname_unique(char *colname, deparse_namespace *dpns,
     deparse_columns *colinfo)
{





 if (!colname_is_unique(colname, dpns, colinfo))
 {
  int colnamelen = strlen(colname);
  char *modname = (char *) palloc(colnamelen + 16);
  int i = 0;

  do
  {
   i++;
   for (;;)
   {





    memcpy(modname, colname, colnamelen);
    sprintf(modname + colnamelen, "_%d", i);
    if (strlen(modname) < NAMEDATALEN)
     break;

    colnamelen = pg_mbcliplen(colname, colnamelen,
            colnamelen - 1);
   }
  } while (!colname_is_unique(modname, dpns, colinfo));
  colname = modname;
 }
 return colname;
}
