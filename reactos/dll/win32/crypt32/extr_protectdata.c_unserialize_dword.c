
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BYTE ;
typedef int BOOL ;


 int FALSE ;
 int TRUE ;
 int memcpy (int*,int const*,int) ;

__attribute__((used)) static
BOOL unserialize_dword(const BYTE *ptr, DWORD *index, DWORD size, DWORD *value)
{


    if (!ptr || !index || !value) return FALSE;

    if (*index+sizeof(DWORD)>size)
    {
        return FALSE;
    }

    memcpy(value,&(ptr[*index]),sizeof(DWORD));
    *index+=sizeof(DWORD);

    return TRUE;
}
