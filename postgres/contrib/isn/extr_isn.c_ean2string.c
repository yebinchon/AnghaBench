
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum isn_type { ____Placeholder_isn_type } isn_type ;
typedef int eanbuf ;
typedef int ean13 ;


 int EAN13 ;
 char* EAN13_FORMAT ;
 unsigned int const** EAN13_index ;
 char const*** EAN13_range ;
 int ERRCODE_NUMERIC_VALUE_OUT_OF_RANGE ;
 int ERROR ;
 int INVALID ;

 unsigned int** ISBN_index ;
 unsigned int** ISBN_index_new ;
 char*** ISBN_range ;
 char*** ISBN_range_new ;

 unsigned int** ISMN_index ;
 char*** ISMN_range ;

 unsigned int** ISSN_index ;
 char*** ISSN_range ;
 int MAXEAN13LEN ;
 int UINT64CONST (int) ;

 unsigned int** UPC_index ;
 char*** UPC_range ;
 int ean2ISBN (char*) ;
 int ean2ISMN (char*) ;
 int ean2ISSN (char*) ;
 int ean2UPC (char*) ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*,int ) ;
 unsigned int hyphenate (char*,char*,char const***,unsigned int const**) ;
 int * isn_names ;
 int snprintf (char*,int,char*,int) ;
 scalar_t__ strncmp (char*,char*,unsigned int) ;

__attribute__((used)) static bool
ean2string(ean13 ean, bool errorOK, char *result, bool shortType)
{
 const char *(*TABLE)[2];
 const unsigned (*TABLE_index)[2];
 enum isn_type type = INVALID;

 char *aux;
 unsigned digval;
 unsigned search;
 char valid = '\0';


 TABLE_index = ISBN_index;

 if ((ean & 1) != 0)
  valid = '!';
 ean >>= 1;

 if (ean > UINT64CONST(9999999999999))
  goto eantoobig;


 search = 0;
 aux = result + MAXEAN13LEN;
 *aux = '\0';
 *--aux = valid;

 do
 {
  digval = (unsigned) (ean % 10);
  ean /= 10;
  *--aux = (char) (digval + '0');
  if (search == 0)
   *--aux = '-';
 } while (ean && search++ < 13);
 while (search++ < 13)
  *--aux = '0';


 search = hyphenate(result, result + 3, EAN13_range, EAN13_index);


 if (search == 0)
 {
  search = hyphenate(result, result + 3, ((void*)0), ((void*)0));
  goto okay;
 }


 if (strncmp("978-", result, search) == 0)
 {

  type = 131;
  TABLE = ISBN_range;
  TABLE_index = ISBN_index;
 }
 else if (strncmp("977-", result, search) == 0)
 {

  type = 129;
  TABLE = ISSN_range;
  TABLE_index = ISSN_index;
 }
 else if (strncmp("979-0", result, search + 1) == 0)
 {

  type = 130;
  TABLE = ISMN_range;
  TABLE_index = ISMN_index;
 }
 else if (strncmp("979-", result, search) == 0)
 {

  type = 131;
  TABLE = ISBN_range_new;
  TABLE_index = ISBN_index_new;
 }
 else if (*result == '0')
 {

  type = 128;
  TABLE = UPC_range;
  TABLE_index = UPC_index;
 }
 else
 {
  type = EAN13;
  TABLE = ((void*)0);
  TABLE_index = ((void*)0);
 }


 digval = search;
 search = hyphenate(result + digval, result + digval + 2, TABLE, TABLE_index);


 if (search == 0)
 {
  search = hyphenate(result + digval, result + digval + 2, ((void*)0), ((void*)0));
  goto okay;
 }

okay:

 if (shortType)
  switch (type)
  {
   case 131:
    ean2ISBN(result);
    break;
   case 130:
    ean2ISMN(result);
    break;
   case 129:
    ean2ISSN(result);
    break;
   case 128:
    ean2UPC(result);
    break;
   default:
    break;
  }
 return 1;

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
