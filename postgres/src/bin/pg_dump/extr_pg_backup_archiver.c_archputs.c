
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Archive ;


 int WriteData (int *,char const*,int ) ;
 int strlen (char const*) ;

void
archputs(const char *s, Archive *AH)
{
 WriteData(AH, s, strlen(s));
 return;
}
