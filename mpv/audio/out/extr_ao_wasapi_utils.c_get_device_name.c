
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct mp_log {int dummy; } ;
struct TYPE_5__ {int pwszVal; } ;
typedef TYPE_1__ PROPVARIANT ;
typedef int IPropertyStore ;
typedef int IMMDevice ;
typedef int HRESULT ;


 int EXIT_ON_ERROR (int ) ;
 scalar_t__ FAILED (int ) ;
 int IMMDevice_OpenPropertyStore (int *,int ,int **) ;
 int IPropertyStore_GetValue (int *,int *,TYPE_1__*) ;
 int PropVariantClear (TYPE_1__*) ;
 int PropVariantInit (TYPE_1__*) ;
 int SAFE_RELEASE (int *) ;
 int STGM_READ ;
 int mp_HRESULT_to_str (int ) ;
 int mp_PKEY_Device_FriendlyName ;
 char* mp_to_utf8 (void*,int ) ;
 int mp_warn (struct mp_log*,char*,int ) ;
 char* talloc_strdup (void*,char*) ;

__attribute__((used)) static char* get_device_name(struct mp_log *l, void *talloc_ctx, IMMDevice *pDevice)
{
    char *namestr = ((void*)0);
    IPropertyStore *pProps = ((void*)0);
    PROPVARIANT devname;
    PropVariantInit(&devname);

    HRESULT hr = IMMDevice_OpenPropertyStore(pDevice, STGM_READ, &pProps);
    EXIT_ON_ERROR(hr);

    hr = IPropertyStore_GetValue(pProps, &mp_PKEY_Device_FriendlyName,
                                 &devname);
    EXIT_ON_ERROR(hr);

    namestr = mp_to_utf8(talloc_ctx, devname.pwszVal);

exit_label:
    if (FAILED(hr))
        mp_warn(l, "Failed getting device name: %s\n", mp_HRESULT_to_str(hr));
    PropVariantClear(&devname);
    SAFE_RELEASE(pProps);
    return namestr ? namestr : talloc_strdup(talloc_ctx, "");
}
