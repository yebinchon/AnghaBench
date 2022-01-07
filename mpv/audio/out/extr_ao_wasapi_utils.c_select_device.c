
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
struct mp_log {int dummy; } ;
struct device_desc {int deviceID; int name; int id; } ;
typedef int * LPWSTR ;


 int mp_verbose (struct mp_log*,char*,int ,int ) ;
 int * talloc_memdup (int *,int ,int) ;
 int wcslen (int ) ;

__attribute__((used)) static LPWSTR select_device(struct mp_log *l, struct device_desc *d)
{
    if (!d)
        return ((void*)0);
    mp_verbose(l, "Selecting device \'%s\' (%s)\n", d->id, d->name);
    return talloc_memdup(((void*)0), d->deviceID,
                         (wcslen(d->deviceID) + 1) * sizeof(wchar_t));
}
