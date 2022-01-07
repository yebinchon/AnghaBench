
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NSAppKitVersionNumber ;
 scalar_t__ NSAppKitVersionNumber10_8 ;
 scalar_t__ floor (int ) ;

__attribute__((used)) static bool is_appkit10_9_or_greater()
{
 return floor(NSAppKitVersionNumber) > NSAppKitVersionNumber10_8;
}
