
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* data; } ;
typedef TYPE_1__ pg_uuid_t ;


 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERROR ;
 int UUID_LEN ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*,char const*) ;
 int isxdigit (unsigned char) ;
 int memcpy (char*,char const*,int) ;
 scalar_t__ strtoul (char*,int *,int) ;

__attribute__((used)) static void
string_to_uuid(const char *source, pg_uuid_t *uuid)
{
 const char *src = source;
 bool braces = 0;
 int i;

 if (src[0] == '{')
 {
  src++;
  braces = 1;
 }

 for (i = 0; i < UUID_LEN; i++)
 {
  char str_buf[3];

  if (src[0] == '\0' || src[1] == '\0')
   goto syntax_error;
  memcpy(str_buf, src, 2);
  if (!isxdigit((unsigned char) str_buf[0]) ||
   !isxdigit((unsigned char) str_buf[1]))
   goto syntax_error;

  str_buf[2] = '\0';
  uuid->data[i] = (unsigned char) strtoul(str_buf, ((void*)0), 16);
  src += 2;
  if (src[0] == '-' && (i % 2) == 1 && i < UUID_LEN - 1)
   src++;
 }

 if (braces)
 {
  if (*src != '}')
   goto syntax_error;
  src++;
 }

 if (*src != '\0')
  goto syntax_error;

 return;

syntax_error:
 ereport(ERROR,
   (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
    errmsg("invalid input syntax for type %s: \"%s\"",
     "uuid", source)));
}
