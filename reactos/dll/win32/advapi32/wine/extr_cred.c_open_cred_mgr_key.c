
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int HKEY ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int HKEY_CURRENT_USER ;
 int KEY_READ ;
 int KEY_WRITE ;
 int REG_OPTION_NON_VOLATILE ;
 int RegCreateKeyExW (int ,int ,int ,int *,int ,int,int *,int *,int *) ;
 int wszCredentialManagerKey ;

__attribute__((used)) static DWORD open_cred_mgr_key(HKEY *hkey, BOOL open_for_write)
{
    return RegCreateKeyExW(HKEY_CURRENT_USER, wszCredentialManagerKey, 0,
                           ((void*)0), REG_OPTION_NON_VOLATILE,
                           KEY_READ | (open_for_write ? KEY_WRITE : 0), ((void*)0), hkey, ((void*)0));
}
