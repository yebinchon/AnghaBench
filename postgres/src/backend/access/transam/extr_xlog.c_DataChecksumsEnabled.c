
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ data_checksum_version; } ;


 int Assert (int ) ;
 TYPE_1__* ControlFile ;

bool
DataChecksumsEnabled(void)
{
 Assert(ControlFile != ((void*)0));
 return (ControlFile->data_checksum_version > 0);
}
