
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int GUID ;
typedef int BOOL ;


 int * CRYPT_GetCachedSIP (int const*) ;

__attribute__((used)) static inline BOOL CRYPT_IsSIPCached(const GUID *pgSubject)
{
    return CRYPT_GetCachedSIP(pgSubject) != ((void*)0);
}
