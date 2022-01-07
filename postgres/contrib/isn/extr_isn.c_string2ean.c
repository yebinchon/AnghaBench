
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum isn_type { ____Placeholder_isn_type } isn_type ;
typedef int ean13 ;


 int ANY ;

 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ;
 int ERROR ;
 int INVALID ;




 void* checkdig (char*,int) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*,char const*,...) ;
 scalar_t__ g_weak ;
 scalar_t__ isdigit (unsigned char) ;
 char const** isn_names ;
 int memcpy (char*,char*,int) ;
 int str2ean (char*) ;
 int strncmp (char*,char*,int) ;
 void* toupper (unsigned char) ;
 unsigned int weight_checkdig (char*,int) ;

__attribute__((used)) static bool
string2ean(const char *str, bool errorOK, ean13 *result,
     enum isn_type accept)
{
 bool digit,
    last;
 char buf[17] = "                ";
 char *aux1 = buf + 3;

 const char *aux2 = str;
 enum isn_type type = INVALID;
 unsigned check = 0,
    rcheck = (unsigned) -1;
 unsigned length = 0;
 bool magic = 0,
    valid = 1;


 while (*aux2 && length <= 13)
 {
  last = (*(aux2 + 1) == '!' || *(aux2 + 1) == '\0');
  digit = (isdigit((unsigned char) *aux2) != 0);

  if (*aux2 == '?' && last)

   magic = digit = 1;
  if (length == 0 && (*aux2 == 'M' || *aux2 == 'm'))
  {

   if (type != INVALID)
    goto eaninvalid;
   type = 130;
   *aux1++ = 'M';
   length++;
  }
  else if (length == 7 && (digit || *aux2 == 'X' || *aux2 == 'x') && last)
  {

   if (type != INVALID)
    goto eaninvalid;
   type = 129;
   *aux1++ = toupper((unsigned char) *aux2);
   length++;
  }
  else if (length == 9 && (digit || *aux2 == 'X' || *aux2 == 'x') && last)
  {

   if (type != INVALID && type != 130)
    goto eaninvalid;
   if (type == INVALID)
    type = 131;
   *aux1++ = toupper((unsigned char) *aux2);
   length++;
  }
  else if (length == 11 && digit && last)
  {

   if (type != INVALID)
    goto eaninvalid;
   type = 128;
   *aux1++ = *aux2;
   length++;
  }
  else if (*aux2 == '-' || *aux2 == ' ')
  {

  }
  else if (*aux2 == '!' && *(aux2 + 1) == '\0')
  {

   if (!magic)
    valid = 0;
   magic = 1;
  }
  else if (!digit)
  {
   goto eaninvalid;
  }
  else
  {
   *aux1++ = *aux2;
   if (++length > 13)
    goto eantoobig;
  }
  aux2++;
 }
 *aux1 = '\0';


 if (length == 13)
 {

  if (type != INVALID)
   goto eaninvalid;
  type = 132;
  check = buf[15] - '0';
 }
 else if (length == 12)
 {

  if (type != 128)
   goto eaninvalid;
  check = buf[14] - '0';
 }
 else if (length == 10)
 {
  if (type != 131 && type != 130)
   goto eaninvalid;
  if (buf[12] == 'X')
   check = 10;
  else
   check = buf[12] - '0';
 }
 else if (length == 8)
 {
  if (type != INVALID && type != 129)
   goto eaninvalid;
  type = 129;
  if (buf[10] == 'X')
   check = 10;
  else
   check = buf[10] - '0';
 }
 else
  goto eaninvalid;

 if (type == INVALID)
  goto eaninvalid;


 if (accept == 132 && type != accept)
  goto eanwrongtype;
 if (accept != ANY && type != 132 && type != accept)
  goto eanwrongtype;
 switch (type)
 {
  case 132:
   valid = (valid && ((rcheck = checkdig(buf + 3, 13)) == check || magic));

   if (buf[3] == '0')
    type = 128;
   else if (strncmp("977", buf + 3, 3) == 0)
    type = 129;
   else if (strncmp("978", buf + 3, 3) == 0)
    type = 131;
   else if (strncmp("9790", buf + 3, 4) == 0)
    type = 130;
   else if (strncmp("979", buf + 3, 3) == 0)
    type = 131;
   if (accept != 132 && accept != ANY && type != accept)
    goto eanwrongtype;
   break;
  case 130:
   memcpy(buf, "9790", 4);

   valid = (valid && ((rcheck = checkdig(buf, 13)) == check || magic));
   break;
  case 131:
   memcpy(buf, "978", 3);
   valid = (valid && ((rcheck = weight_checkdig(buf + 3, 10)) == check || magic));
   break;
  case 129:
   memcpy(buf + 10, "00", 2);

   memcpy(buf, "977", 3);
   valid = (valid && ((rcheck = weight_checkdig(buf + 3, 8)) == check || magic));
   break;
  case 128:
   buf[2] = '0';
   valid = (valid && ((rcheck = checkdig(buf + 2, 13)) == check || magic));
  default:
   break;
 }


 for (aux1 = buf; *aux1 && *aux1 <= ' '; aux1++);
 aux1[12] = checkdig(aux1, 13) + '0';
 aux1[13] = '\0';

 if (!valid && !magic)
  goto eanbadcheck;

 *result = str2ean(aux1);
 *result |= valid ? 0 : 1;
 return 1;

eanbadcheck:
 if (g_weak)
 {

  *result = str2ean(aux1);
  *result |= 1;
  return 1;
 }

 if (!errorOK)
 {
  if (rcheck == (unsigned) -1)
  {
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
      errmsg("invalid %s number: \"%s\"",
       isn_names[accept], str)));
  }
  else
  {
   ereport(ERROR,
     (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
      errmsg("invalid check digit for %s number: \"%s\", should be %c",
       isn_names[accept], str, (rcheck == 10) ? ('X') : (rcheck + '0'))));
  }
 }
 return 0;

eaninvalid:
 if (!errorOK)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
     errmsg("invalid input syntax for %s number: \"%s\"",
      isn_names[accept], str)));
 return 0;

eanwrongtype:
 if (!errorOK)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
     errmsg("cannot cast %s to %s for number: \"%s\"",
      isn_names[type], isn_names[accept], str)));
 return 0;

eantoobig:
 if (!errorOK)
  ereport(ERROR,
    (errcode(ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE),
     errmsg("value \"%s\" is out of range for %s type",
      str, isn_names[accept])));
 return 0;
}
