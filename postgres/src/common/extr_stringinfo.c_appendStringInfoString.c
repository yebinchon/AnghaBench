
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int StringInfo ;


 int appendBinaryStringInfo (int ,char const*,int ) ;
 int strlen (char const*) ;

void
appendStringInfoString(StringInfo str, const char *s)
{
 appendBinaryStringInfo(str, s, strlen(s));
}
