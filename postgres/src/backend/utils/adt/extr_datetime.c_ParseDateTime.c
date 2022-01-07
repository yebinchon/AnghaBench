
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int APPEND_CHAR (char*,char const*,int ) ;
 int DTERR_BAD_FORMAT ;
 int DTK_DATE ;
 int DTK_NUMBER ;
 int DTK_SPECIAL ;
 int DTK_STRING ;
 int DTK_TIME ;
 int DTK_TZ ;
 int * datebsearch (char*,int ,int ) ;
 int datetktbl ;
 scalar_t__ isalnum (unsigned char) ;
 scalar_t__ isalpha (unsigned char) ;
 scalar_t__ isdigit (unsigned char) ;
 scalar_t__ ispunct (unsigned char) ;
 scalar_t__ isspace (unsigned char) ;
 int pg_tolower (unsigned char) ;
 int szdatetktbl ;

int
ParseDateTime(const char *timestr, char *workbuf, size_t buflen,
     char **field, int *ftype, int maxfields, int *numfields)
{
 int nf = 0;
 const char *cp = timestr;
 char *bufp = workbuf;
 const char *bufend = workbuf + buflen;
 while (*cp != '\0')
 {

  if (isspace((unsigned char) *cp))
  {
   cp++;
   continue;
  }


  if (nf >= maxfields)
   return DTERR_BAD_FORMAT;
  field[nf] = bufp;


  if (isdigit((unsigned char) *cp))
  {
   do { if (((bufp) + 1) >= (bufend)) return DTERR_BAD_FORMAT; *(bufp)++ = *cp++; } while (0);
   while (isdigit((unsigned char) *cp))
    do { if (((bufp) + 1) >= (bufend)) return DTERR_BAD_FORMAT; *(bufp)++ = *cp++; } while (0);


   if (*cp == ':')
   {
    ftype[nf] = DTK_TIME;
    do { if (((bufp) + 1) >= (bufend)) return DTERR_BAD_FORMAT; *(bufp)++ = *cp++; } while (0);
    while (isdigit((unsigned char) *cp) ||
        (*cp == ':') || (*cp == '.'))
     do { if (((bufp) + 1) >= (bufend)) return DTERR_BAD_FORMAT; *(bufp)++ = *cp++; } while (0);
   }

   else if (*cp == '-' || *cp == '/' || *cp == '.')
   {

    char delim = *cp;

    do { if (((bufp) + 1) >= (bufend)) return DTERR_BAD_FORMAT; *(bufp)++ = *cp++; } while (0);

    if (isdigit((unsigned char) *cp))
    {
     ftype[nf] = ((delim == '.') ? DTK_NUMBER : DTK_DATE);
     while (isdigit((unsigned char) *cp))
      do { if (((bufp) + 1) >= (bufend)) return DTERR_BAD_FORMAT; *(bufp)++ = *cp++; } while (0);





     if (*cp == delim)
     {
      ftype[nf] = DTK_DATE;
      do { if (((bufp) + 1) >= (bufend)) return DTERR_BAD_FORMAT; *(bufp)++ = *cp++; } while (0);
      while (isdigit((unsigned char) *cp) || *cp == delim)
       do { if (((bufp) + 1) >= (bufend)) return DTERR_BAD_FORMAT; *(bufp)++ = *cp++; } while (0);
     }
    }
    else
    {
     ftype[nf] = DTK_DATE;
     while (isalnum((unsigned char) *cp) || *cp == delim)
      do { if (((bufp) + 1) >= (bufend)) return DTERR_BAD_FORMAT; *(bufp)++ = pg_tolower((unsigned char) *cp++); } while (0);
    }
   }





   else
    ftype[nf] = DTK_NUMBER;
  }

  else if (*cp == '.')
  {
   do { if (((bufp) + 1) >= (bufend)) return DTERR_BAD_FORMAT; *(bufp)++ = *cp++; } while (0);
   while (isdigit((unsigned char) *cp))
    do { if (((bufp) + 1) >= (bufend)) return DTERR_BAD_FORMAT; *(bufp)++ = *cp++; } while (0);

   ftype[nf] = DTK_NUMBER;
  }




  else if (isalpha((unsigned char) *cp))
  {
   bool is_date;

   ftype[nf] = DTK_STRING;
   do { if (((bufp) + 1) >= (bufend)) return DTERR_BAD_FORMAT; *(bufp)++ = pg_tolower((unsigned char) *cp++); } while (0);
   while (isalpha((unsigned char) *cp))
    do { if (((bufp) + 1) >= (bufend)) return DTERR_BAD_FORMAT; *(bufp)++ = pg_tolower((unsigned char) *cp++); } while (0);
   is_date = 0;
   if (*cp == '-' || *cp == '/' || *cp == '.')
    is_date = 1;
   else if (*cp == '+' || isdigit((unsigned char) *cp))
   {
    *bufp = '\0';

    if (datebsearch(field[nf], datetktbl, szdatetktbl) == ((void*)0))
     is_date = 1;
   }
   if (is_date)
   {
    ftype[nf] = DTK_DATE;
    do
    {
     do { if (((bufp) + 1) >= (bufend)) return DTERR_BAD_FORMAT; *(bufp)++ = pg_tolower((unsigned char) *cp++); } while (0);
    } while (*cp == '+' || *cp == '-' ||
       *cp == '/' || *cp == '_' ||
       *cp == '.' || *cp == ':' ||
       isalnum((unsigned char) *cp));
   }
  }

  else if (*cp == '+' || *cp == '-')
  {
   do { if (((bufp) + 1) >= (bufend)) return DTERR_BAD_FORMAT; *(bufp)++ = *cp++; } while (0);

   while (isspace((unsigned char) *cp))
    cp++;


   if (isdigit((unsigned char) *cp))
   {
    ftype[nf] = DTK_TZ;
    do { if (((bufp) + 1) >= (bufend)) return DTERR_BAD_FORMAT; *(bufp)++ = *cp++; } while (0);
    while (isdigit((unsigned char) *cp) ||
        *cp == ':' || *cp == '.' || *cp == '-')
     do { if (((bufp) + 1) >= (bufend)) return DTERR_BAD_FORMAT; *(bufp)++ = *cp++; } while (0);
   }

   else if (isalpha((unsigned char) *cp))
   {
    ftype[nf] = DTK_SPECIAL;
    do { if (((bufp) + 1) >= (bufend)) return DTERR_BAD_FORMAT; *(bufp)++ = pg_tolower((unsigned char) *cp++); } while (0);
    while (isalpha((unsigned char) *cp))
     do { if (((bufp) + 1) >= (bufend)) return DTERR_BAD_FORMAT; *(bufp)++ = pg_tolower((unsigned char) *cp++); } while (0);
   }

   else
    return DTERR_BAD_FORMAT;
  }

  else if (ispunct((unsigned char) *cp))
  {
   cp++;
   continue;
  }

  else
   return DTERR_BAD_FORMAT;


  *bufp++ = '\0';
  nf++;
 }

 *numfields = nf;

 return 0;
}
