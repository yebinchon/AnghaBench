
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_INVALID_PARAMETER_VALUE ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char) ;
 int* hexlookup ;

__attribute__((used)) static inline char
get_hex(char c)
{
 int res = -1;

 if (c > 0 && c < 127)
  res = hexlookup[(unsigned char) c];

 if (res < 0)
  ereport(ERROR,
    (errcode(ERRCODE_INVALID_PARAMETER_VALUE),
     errmsg("invalid hexadecimal digit: \"%c\"", c)));

 return (char) res;
}
