
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int EaNameLength; int EaName; } ;
typedef TYPE_1__* PFILE_FULL_EA_INFORMATION ;


 scalar_t__ strncmp (char*,int ,int) ;

__attribute__((used)) static int is_cygwin_ea(
    PFILE_FULL_EA_INFORMATION ea)
{
    return (strncmp("NfsV3Attributes", ea->EaName, ea->EaNameLength) == 0
            && sizeof("NfsV3Attributes")-1 == ea->EaNameLength)
        || (strncmp("NfsActOnLink", ea->EaName, ea->EaNameLength) == 0
            && sizeof("NfsActOnLink")-1 == ea->EaNameLength)
        || (strncmp("NfsSymlinkTargetName", ea->EaName, ea->EaNameLength) == 0
            && sizeof("NfsSymlinkTargetName")-1 == ea->EaNameLength);
}
