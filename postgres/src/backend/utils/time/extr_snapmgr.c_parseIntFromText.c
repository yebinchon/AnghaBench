
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char const*) ;
 int sscanf (char*,char*,int*) ;
 char* strchr (char*,char) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char const*,int) ;

__attribute__((used)) static int
parseIntFromText(const char *prefix, char **s, const char *filename)
{
 char *ptr = *s;
 int prefixlen = strlen(prefix);
 int val;

 if (strncmp(ptr, prefix, prefixlen) != 0)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
     errmsg("invalid snapshot data in file \"%s\"", filename)));
 ptr += prefixlen;
 if (sscanf(ptr, "%d", &val) != 1)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
     errmsg("invalid snapshot data in file \"%s\"", filename)));
 ptr = strchr(ptr, '\n');
 if (!ptr)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
     errmsg("invalid snapshot data in file \"%s\"", filename)));
 *s = ptr + 1;
 return val;
}
