
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ca_sel ;
typedef int ca_scope ;
typedef int OSStatus ;
typedef int CFStringRef ;
typedef int AudioObjectID ;


 int CFRelease (int ) ;
 int CHECK_CA_ERROR_SILENT_L (int ) ;
 int ca_get (int ,int ,int ,int,void**) ;
 char* cfstr_get_cstr (int ) ;
 int coreaudio_error ;

OSStatus ca_get_str(AudioObjectID id, ca_scope scope, ca_sel selector,
                    char **data)
{
    CFStringRef string;
    OSStatus err =
        ca_get(id, scope, selector, sizeof(CFStringRef), (void **)&string);
    CHECK_CA_ERROR_SILENT_L(coreaudio_error);

    *data = cfstr_get_cstr(string);
    CFRelease(string);
coreaudio_error:
    return err;
}
