
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int PWCHAR ;
typedef int PHKEY ;
typedef int LONG ;
typedef int HANDLE ;


 int KEY_READ ;
 int RegOpenKeyExW (int ,int ,int ,int ,int ) ;

LONG OpenChildKeyRead( HANDLE RegHandle,
         PWCHAR ChildKeyName,
         PHKEY ReturnHandle ) {
  return RegOpenKeyExW( RegHandle,
   ChildKeyName,
   0,
   KEY_READ,
   ReturnHandle );
}
