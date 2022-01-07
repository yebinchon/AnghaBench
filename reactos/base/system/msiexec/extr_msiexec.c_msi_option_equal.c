
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char* LPCWSTR ;
typedef int LPCSTR ;
typedef int BOOL ;


 int FALSE ;
 int msi_strequal (char*,int ) ;

__attribute__((used)) static BOOL msi_option_equal(LPCWSTR str1, LPCSTR str2)
{
    if (str1[0] != '/' && str1[0] != '-')
        return FALSE;


    return msi_strequal(str1 + 1, str2);
}
