
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned int major; unsigned int minor; } ;


 int ASSERT (int ,char*) ;
 TYPE_1__* FW_VER_ID ;

extern void ase_fw_ver(unsigned int *major, unsigned int *minor)
{
    ASSERT(major != ((void*)0), "pointer is NULL");
    ASSERT(minor != ((void*)0), "pointer is NULL");

    *major = FW_VER_ID->major;
    *minor = FW_VER_ID->minor;
}
