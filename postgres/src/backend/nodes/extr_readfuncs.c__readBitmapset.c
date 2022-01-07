
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Bitmapset ;


 int ERROR ;
 int READ_TEMP_LOCALS () ;
 int * bms_add_member (int *,int) ;
 int elog (int ,char*,...) ;
 int length ;
 char* pg_strtok (int*) ;
 scalar_t__ strtol (char*,char**,int) ;
 char* token ;

__attribute__((used)) static Bitmapset *
_readBitmapset(void)
{
 Bitmapset *result = ((void*)0);

 READ_TEMP_LOCALS();

 token = pg_strtok(&length);
 if (token == ((void*)0))
  elog(ERROR, "incomplete Bitmapset structure");
 if (length != 1 || token[0] != '(')
  elog(ERROR, "unrecognized token: \"%.*s\"", length, token);

 token = pg_strtok(&length);
 if (token == ((void*)0))
  elog(ERROR, "incomplete Bitmapset structure");
 if (length != 1 || token[0] != 'b')
  elog(ERROR, "unrecognized token: \"%.*s\"", length, token);

 for (;;)
 {
  int val;
  char *endptr;

  token = pg_strtok(&length);
  if (token == ((void*)0))
   elog(ERROR, "unterminated Bitmapset structure");
  if (length == 1 && token[0] == ')')
   break;
  val = (int) strtol(token, &endptr, 10);
  if (endptr != token + length)
   elog(ERROR, "unrecognized integer: \"%.*s\"", length, token);
  result = bms_add_member(result, val);
 }

 return result;
}
