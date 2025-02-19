
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_1__ ;


struct enumerator {long long count; } ;
struct device_desc {int name; int id; } ;
struct ao {int log; } ;
struct TYPE_8__ {int len; } ;
typedef TYPE_1__ bstr ;
typedef long long UINT ;
typedef int * LPWSTR ;


 long long BSTR_P (TYPE_1__) ;
 int MP_DBG (struct ao*,char*,long long) ;
 int MP_ERR (struct ao*,char*,...) ;
 int MP_VERBOSE (struct ao*,char*,...) ;
 int MP_WARN (struct ao*,char*,long long,int ,int ) ;
 int SAFE_DESTROY (struct device_desc*,int ) ;
 int bstr0 (int ) ;
 int bstr_eatstart0 (TYPE_1__*,char*) ;
 int bstr_strip (int ) ;
 scalar_t__ bstrcmp (TYPE_1__,int ) ;
 long long bstrtoll (TYPE_1__,TYPE_1__*,int) ;
 struct enumerator* create_enumerator (int ) ;
 struct device_desc* default_device_desc (struct enumerator*) ;
 int destroy_enumerator (struct enumerator*) ;
 struct device_desc* device_desc_for_num (struct enumerator*,long long) ;
 int * select_device (int ,struct device_desc*) ;
 int talloc_free (struct device_desc*) ;
 TYPE_1__ wasapi_get_specified_device_string (struct ao*) ;

LPWSTR wasapi_find_deviceID(struct ao *ao)
{
    LPWSTR deviceID = ((void*)0);
    bstr device = wasapi_get_specified_device_string(ao);
    MP_DBG(ao, "Find device \'%.*s\'\n", BSTR_P(device));

    struct device_desc *d = ((void*)0);
    struct enumerator *enumerator = create_enumerator(ao->log);
    if (!enumerator)
        goto exit_label;

    if (!enumerator->count) {
        MP_ERR(ao, "There are no playback devices available\n");
        goto exit_label;
    }

    if (!device.len) {
        MP_VERBOSE(ao, "No device specified. Selecting default.\n");
        d = default_device_desc(enumerator);
        deviceID = select_device(ao->log, d);
        goto exit_label;
    }


    bstr rest;
    long long devno = bstrtoll(device, &rest, 10);
    if (!rest.len && 0 <= devno && devno < (long long)enumerator->count) {
        MP_VERBOSE(ao, "Selecting device by number: #%lld\n", devno);
        d = device_desc_for_num(enumerator, devno);
        deviceID = select_device(ao->log, d);
        goto exit_label;
    }


    bstr_eatstart0(&device, "{0.0.0.00000000}.");
    for (UINT i = 0; i < enumerator->count; i++) {
        d = device_desc_for_num(enumerator, i);
        if (!d)
            goto exit_label;

        if (bstrcmp(device, bstr_strip(bstr0(d->id))) == 0) {
            MP_VERBOSE(ao, "Selecting device by id: \'%.*s\'\n", BSTR_P(device));
            deviceID = select_device(ao->log, d);
            goto exit_label;
        }

        if (bstrcmp(device, bstr_strip(bstr0(d->name))) == 0) {
            if (!deviceID) {
                MP_VERBOSE(ao, "Selecting device by name: \'%.*s\'\n", BSTR_P(device));
                deviceID = select_device(ao->log, d);
            } else {
                MP_WARN(ao, "Multiple devices matched \'%.*s\'."
                        "Ignoring device \'%s\' (%s).\n",
                        BSTR_P(device), d->id, d->name);
            }
        }
        SAFE_DESTROY(d, talloc_free(d));
    }

    if (!deviceID)
        MP_ERR(ao, "Failed to find device \'%.*s\'\n", BSTR_P(device));

exit_label:
    talloc_free(d);
    destroy_enumerator(enumerator);
    return deviceID;
}
