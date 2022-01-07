
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int devnames_name ;
typedef int WORD ;
struct TYPE_3__ {int wOutputOffset; int wDeviceOffset; int wDriverOffset; } ;
typedef TYPE_1__ DEVNAMES ;


 int ERR (char*) ;




__attribute__((used)) static inline WORD get_devname_offset(const DEVNAMES *dn, devnames_name which)
{
    switch(which)
    {
    case 129: return dn->wDriverOffset;
    case 130: return dn->wDeviceOffset;
    case 128: return dn->wOutputOffset;
    }
    ERR("Shouldn't be here\n");
    return 0;
}
