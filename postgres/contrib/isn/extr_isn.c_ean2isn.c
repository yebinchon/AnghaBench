
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum isn_type { ____Placeholder_isn_type } isn_type ;
typedef int eanbuf ;
typedef int ean13 ;


 int ANY ;
 int EAN13 ;
 char* EAN13_FORMAT ;
 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ;
 int ERROR ;
 int INVALID ;
 int ISBN ;
 int ISMN ;
 int ISSN ;
 int MAXEAN13LEN ;
 int UINT64CONST (int) ;
 int UPC ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*,int ,...) ;
 int * isn_names ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strncmp (char*,char*,int) ;

__attribute__((used)) static bool
ean2isn(ean13 ean, bool errorOK, ean13 *result, enum isn_type accept)
{
 enum isn_type type = INVALID;

 char buf[MAXEAN13LEN + 1];
 char *aux;
 unsigned digval;
 unsigned search;
 ean13 ret = ean;

 ean >>= 1;

 if (ean > UINT64CONST(9999999999999))
  goto eantoobig;


 search = 0;
 aux = buf + 13;
 *aux = '\0';
 do
 {
  digval = (unsigned) (ean % 10);
  ean /= 10;
  *--aux = (char) (digval + '0');
 } while (ean && search++ < 12);
 while (search++ < 12)
  *--aux = '0';


 if (strncmp("978", buf, 3) == 0)
 {
  type = ISBN;
 }
 else if (strncmp("977", buf, 3) == 0)
 {
  type = ISSN;
 }
 else if (strncmp("9790", buf, 4) == 0)
 {
  type = ISMN;
 }
 else if (strncmp("979", buf, 3) == 0)
 {
  type = ISBN;
 }
 else if (*buf == '0')
 {
  type = UPC;
 }
 else
 {
  type = EAN13;
 }
 if (accept != ANY && accept != EAN13 && accept != type)
  goto eanwrongtype;

 *result = ret;
 return 1;

eanwrongtype:
 if (!errorOK)
 {
  if (type != EAN13)
  {
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
      errmsg("cannot cast EAN13(%s) to %s for number: \"%s\"",
       isn_names[type], isn_names[accept], buf)));
  }
  else
  {
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
      errmsg("cannot cast %s to %s for number: \"%s\"",
       isn_names[type], isn_names[accept], buf)));
  }
 }
 return 0;

eantoobig:
 if (!errorOK)
 {
  char eanbuf[64];





  snprintf(eanbuf, sizeof(eanbuf), EAN13_FORMAT, ean);
  ereport(ERROR,
    (errcode(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
     errmsg("value \"%s\" is out of range for %s type",
      eanbuf, isn_names[type])));
 }
 return 0;
}
