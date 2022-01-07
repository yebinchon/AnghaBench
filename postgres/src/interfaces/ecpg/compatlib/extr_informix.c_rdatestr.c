
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int date ;


 int ECPG_INFORMIX_DATE_CONVERT ;
 char* PGTYPESdate_to_asc (int ) ;
 int free (char*) ;
 int strcpy (char*,char*) ;

int
rdatestr(date d, char *str)
{
 char *tmp = PGTYPESdate_to_asc(d);

 if (!tmp)
  return ECPG_INFORMIX_DATE_CONVERT;


 strcpy(str, tmp);
 free(tmp);

 return 0;
}
