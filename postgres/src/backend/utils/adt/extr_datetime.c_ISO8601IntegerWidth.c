
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strspn (char*,char*) ;

__attribute__((used)) static int
ISO8601IntegerWidth(char *fieldstart)
{

 if (*fieldstart == '-')
  fieldstart++;
 return strspn(fieldstart, "0123456789");
}
