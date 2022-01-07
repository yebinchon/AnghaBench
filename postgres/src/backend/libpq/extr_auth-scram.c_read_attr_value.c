
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_PROTOCOL_VIOLATION ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,char,...) ;
 int errmsg (char*) ;
 int sanitize_char (char) ;

__attribute__((used)) static char *
read_attr_value(char **input, char attr)
{
 char *begin = *input;
 char *end;

 if (*begin != attr)
  ereport(ERROR,
    (errcode(ERRCODE_PROTOCOL_VIOLATION),
     errmsg("malformed SCRAM message"),
     errdetail("Expected attribute \"%c\" but found \"%s\".",
         attr, sanitize_char(*begin))));
 begin++;

 if (*begin != '=')
  ereport(ERROR,
    (errcode(ERRCODE_PROTOCOL_VIOLATION),
     errmsg("malformed SCRAM message"),
     errdetail("Expected character \"=\" for attribute \"%c\".", attr)));
 begin++;

 end = begin;
 while (*end && *end != ',')
  end++;

 if (*end)
 {
  *end = '\0';
  *input = end + 1;
 }
 else
  *input = end;

 return begin;
}
