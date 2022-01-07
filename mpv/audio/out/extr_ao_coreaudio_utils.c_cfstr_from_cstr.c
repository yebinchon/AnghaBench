
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CFStringRef ;


 int CA_CFSTR_ENCODING ;
 int CFStringCreateWithCString (int *,char*,int ) ;

CFStringRef cfstr_from_cstr(char *str)
{
    return CFStringCreateWithCString(((void*)0), str, CA_CFSTR_ENCODING);
}
