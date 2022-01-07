
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ zic_t ;
struct zone {char* z_format; char z_format_specifier; scalar_t__ z_stdoff; } ;


 int PERCENT_Z_LEN_BOUND ;
 char* abbroffset (char*,scalar_t__) ;
 scalar_t__ is_alpha (char) ;
 int memcpy (char*,char const*,int) ;
 int memmove (char*,char*,size_t) ;
 int sprintf (char*,char const*,char const*) ;
 char* strchr (char const*,char) ;
 int strcpy (char*,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static size_t
doabbr(char *abbr, struct zone const *zp, char const *letters,
    bool isdst, zic_t save, bool doquotes)
{
 char *cp;
 char *slashp;
 size_t len;
 char const *format = zp->z_format;

 slashp = strchr(format, '/');
 if (slashp == ((void*)0))
 {
  char letterbuf[PERCENT_Z_LEN_BOUND + 1];

  if (zp->z_format_specifier == 'z')
   letters = abbroffset(letterbuf, zp->z_stdoff + save);
  else if (!letters)
   letters = "%s";
  sprintf(abbr, format, letters);
 }
 else if (isdst)
 {
  strcpy(abbr, slashp + 1);
 }
 else
 {
  memcpy(abbr, format, slashp - format);
  abbr[slashp - format] = '\0';
 }
 len = strlen(abbr);
 if (!doquotes)
  return len;
 for (cp = abbr; is_alpha(*cp); cp++)
  continue;
 if (len > 0 && *cp == '\0')
  return len;
 abbr[len + 2] = '\0';
 abbr[len + 1] = '>';
 memmove(abbr + 1, abbr, len);
 abbr[0] = '<';
 return len + 2;
}
