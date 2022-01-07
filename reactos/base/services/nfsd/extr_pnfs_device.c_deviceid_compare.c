
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct list_entry {int dummy; } ;
struct TYPE_4__ {int deviceid; } ;
struct TYPE_5__ {TYPE_1__ device; } ;
typedef TYPE_2__ pnfs_file_device ;


 int PNFS_DEVICEID_SIZE ;
 TYPE_2__* device_entry (struct list_entry const*) ;
 int memcmp (int ,void const*,int ) ;

__attribute__((used)) static int deviceid_compare(
    const struct list_entry *entry,
    const void *deviceid)
{
    const pnfs_file_device *device = device_entry(entry);
    return memcmp(device->device.deviceid, deviceid, PNFS_DEVICEID_SIZE);
}
