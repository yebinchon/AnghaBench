
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int CFStringRef ;
typedef scalar_t__ CFIndex ;


 int CA_CFSTR_ENCODING ;
 int CFStringGetCString (int ,char*,scalar_t__,int ) ;
 int CFStringGetLength (int ) ;
 scalar_t__ CFStringGetMaximumSizeForEncoding (int ,int ) ;
 char* talloc_zero_size (int *,scalar_t__) ;

char *cfstr_get_cstr(CFStringRef cfstr)
{
    CFIndex size =
        CFStringGetMaximumSizeForEncoding(
            CFStringGetLength(cfstr), CA_CFSTR_ENCODING) + 1;
    char *buffer = talloc_zero_size(((void*)0), size);
    CFStringGetCString(cfstr, buffer, size, CA_CFSTR_ENCODING);
    return buffer;
}
