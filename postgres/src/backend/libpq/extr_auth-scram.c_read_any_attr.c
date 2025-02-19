
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_PROTOCOL_VIOLATION ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errdetail (char*,...) ;
 int errmsg (char*) ;
 char sanitize_char (char) ;

__attribute__((used)) static char *
read_any_attr(char **input, char *attr_p)
{
 char *begin = *input;
 char *end;
 char attr = *begin;

 if (attr == '\0')
  ereport(ERROR,
    (errcode(ERRCODE_PROTOCOL_VIOLATION),
     errmsg("malformed SCRAM message"),
     errdetail("Attribute expected, but found end of string.")));







 if (!((attr >= 'A' && attr <= 'Z') ||
    (attr >= 'a' && attr <= 'z')))
  ereport(ERROR,
    (errcode(ERRCODE_PROTOCOL_VIOLATION),
     errmsg("malformed SCRAM message"),
     errdetail("Attribute expected, but found invalid character \"%s\".",
         sanitize_char(attr))));
 if (attr_p)
  *attr_p = attr;
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
