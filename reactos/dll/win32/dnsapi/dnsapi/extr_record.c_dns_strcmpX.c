
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LPCVOID ;
typedef scalar_t__ BOOL ;


 int lstrcmpiA (int ,int ) ;
 int lstrcmpiW (int ,int ) ;

__attribute__((used)) static int dns_strcmpX( LPCVOID str1, LPCVOID str2, BOOL wide )
{
    if (wide)
        return lstrcmpiW( str1, str2 );
    else
        return lstrcmpiA( str1, str2 );
}
