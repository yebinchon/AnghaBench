
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ IS_HIGHBIT_SET (unsigned char) ;
 int NAMEDATALEN ;
 scalar_t__ isupper (unsigned char) ;
 char* palloc (int) ;
 int pg_database_encoding_max_length () ;
 unsigned char tolower (unsigned char) ;
 int truncate_identifier (char*,int,int) ;

char *
downcase_identifier(const char *ident, int len, bool warn, bool truncate)
{
 char *result;
 int i;
 bool enc_is_single_byte;

 result = palloc(len + 1);
 enc_is_single_byte = pg_database_encoding_max_length() == 1;
 for (i = 0; i < len; i++)
 {
  unsigned char ch = (unsigned char) ident[i];

  if (ch >= 'A' && ch <= 'Z')
   ch += 'a' - 'A';
  else if (enc_is_single_byte && IS_HIGHBIT_SET(ch) && isupper(ch))
   ch = tolower(ch);
  result[i] = (char) ch;
 }
 result[i] = '\0';

 if (i >= NAMEDATALEN && truncate)
  truncate_identifier(result, i, warn);

 return result;
}
