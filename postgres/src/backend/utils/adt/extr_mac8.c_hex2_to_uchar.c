
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ERRCODE_INVALID_TEXT_REPRESENTATION ;
 int ERROR ;
 int ereport (int ,int ) ;
 int errcode (int ) ;
 int errmsg (char*,char*,unsigned char const*) ;
 char* hexlookup ;

__attribute__((used)) static inline unsigned char
hex2_to_uchar(const unsigned char *ptr, const unsigned char *str)
{
 unsigned char ret = 0;
 signed char lookup;


 if (*ptr > 127)
  goto invalid_input;

 lookup = hexlookup[*ptr];
 if (lookup < 0)
  goto invalid_input;

 ret = lookup << 4;


 ptr++;

 if (*ptr > 127)
  goto invalid_input;

 lookup = hexlookup[*ptr];
 if (lookup < 0)
  goto invalid_input;

 ret += lookup;

 return ret;

invalid_input:
 ereport(ERROR,
   (errcode(ERRCODE_INVALID_TEXT_REPRESENTATION),
    errmsg("invalid input syntax for type %s: \"%s\"", "macaddr8",
     str)));


 return 0;
}
