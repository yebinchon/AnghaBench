
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPWSTR ;
typedef int GUID ;
typedef int BOOL ;


 scalar_t__ CLSIDFromString (int ,int *) ;
 int FALSE ;
 scalar_t__ NOERROR ;
 int lstrlenW (int ) ;

__attribute__((used)) static BOOL IsProductCode(LPWSTR str)
{
 GUID ProductCode;

 if(lstrlenW(str) != 38)
  return FALSE;
 return ( (CLSIDFromString(str, &ProductCode) == NOERROR) );

}
