
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DTK_DATE ;
 int DTK_NUMBER ;
 int DTK_SPECIAL ;
 int DTK_STRING ;
 int DTK_TIME ;
 int DTK_TZ ;
 int MAXDATEFIELDS ;
 scalar_t__ isalnum (unsigned char) ;
 scalar_t__ isalpha (unsigned char) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ ispunct (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;
 void* pg_tolower (unsigned char) ;

int
ParseDateTime(char *timestr, char *lowstr,
     char **field, int *ftype, int *numfields, char **endstr)
{
 int nf = 0;
 char *lp = lowstr;

 *endstr = timestr;

 while (*(*endstr) != '\0')
 {

  if (nf >= MAXDATEFIELDS)
   return -1;
  field[nf] = lp;


  if (isdigit((unsigned char) *(*endstr)))
  {
   *lp++ = *(*endstr)++;
   while (isdigit((unsigned char) *(*endstr)))
    *lp++ = *(*endstr)++;


   if (*(*endstr) == ':')
   {
    ftype[nf] = DTK_TIME;
    *lp++ = *(*endstr)++;
    while (isdigit((unsigned char) *(*endstr)) ||
        (*(*endstr) == ':') || (*(*endstr) == '.'))
     *lp++ = *(*endstr)++;
   }

   else if (*(*endstr) == '-' || *(*endstr) == '/' || *(*endstr) == '.')
   {

    char *dp = (*endstr);

    *lp++ = *(*endstr)++;

    if (isdigit((unsigned char) *(*endstr)))
    {
     ftype[nf] = (*dp == '.') ? DTK_NUMBER : DTK_DATE;
     while (isdigit((unsigned char) *(*endstr)))
      *lp++ = *(*endstr)++;





     if (*(*endstr) == *dp)
     {
      ftype[nf] = DTK_DATE;
      *lp++ = *(*endstr)++;
      while (isdigit((unsigned char) *(*endstr)) || (*(*endstr) == *dp))
       *lp++ = *(*endstr)++;
     }
    }
    else
    {
     ftype[nf] = DTK_DATE;
     while (isalnum((unsigned char) *(*endstr)) || (*(*endstr) == *dp))
      *lp++ = pg_tolower((unsigned char) *(*endstr)++);
    }
   }





   else
    ftype[nf] = DTK_NUMBER;
  }

  else if (*(*endstr) == '.')
  {
   *lp++ = *(*endstr)++;
   while (isdigit((unsigned char) *(*endstr)))
    *lp++ = *(*endstr)++;

   ftype[nf] = DTK_NUMBER;
  }




  else if (isalpha((unsigned char) *(*endstr)))
  {
   ftype[nf] = DTK_STRING;
   *lp++ = pg_tolower((unsigned char) *(*endstr)++);
   while (isalpha((unsigned char) *(*endstr)))
    *lp++ = pg_tolower((unsigned char) *(*endstr)++);





   if (*(*endstr) == '-' || *(*endstr) == '/' || *(*endstr) == '.')
   {
    char *dp = (*endstr);

    ftype[nf] = DTK_DATE;
    *lp++ = *(*endstr)++;
    while (isdigit((unsigned char) *(*endstr)) || *(*endstr) == *dp)
     *lp++ = *(*endstr)++;
   }
  }

  else if (isspace((unsigned char) *(*endstr)))
  {
   (*endstr)++;
   continue;
  }

  else if (*(*endstr) == '+' || *(*endstr) == '-')
  {
   *lp++ = *(*endstr)++;

   while (isspace((unsigned char) *(*endstr)))
    (*endstr)++;

   if (isdigit((unsigned char) *(*endstr)))
   {
    ftype[nf] = DTK_TZ;
    *lp++ = *(*endstr)++;
    while (isdigit((unsigned char) *(*endstr)) ||
        (*(*endstr) == ':') || (*(*endstr) == '.'))
     *lp++ = *(*endstr)++;
   }

   else if (isalpha((unsigned char) *(*endstr)))
   {
    ftype[nf] = DTK_SPECIAL;
    *lp++ = pg_tolower((unsigned char) *(*endstr)++);
    while (isalpha((unsigned char) *(*endstr)))
     *lp++ = pg_tolower((unsigned char) *(*endstr)++);
   }

   else
    return -1;
  }

  else if (ispunct((unsigned char) *(*endstr)))
  {
   (*endstr)++;
   continue;

  }

  else
   return -1;


  *lp++ = '\0';
  nf++;
 }

 *numfields = nf;

 return 0;
}
