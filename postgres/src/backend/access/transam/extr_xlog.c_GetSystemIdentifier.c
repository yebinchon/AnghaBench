
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64 ;
struct TYPE_2__ {int system_identifier; } ;


 int Assert (int ) ;
 TYPE_1__* ControlFile ;

uint64
GetSystemIdentifier(void)
{
 Assert(ControlFile != ((void*)0));
 return ControlFile->system_identifier;
}
