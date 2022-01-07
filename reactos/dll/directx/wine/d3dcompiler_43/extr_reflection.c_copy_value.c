
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int DWORD ;
typedef int BOOL ;


 int ERR (char*) ;
 int FALSE ;
 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int ) ;
 int TRUE ;
 int memcpy (void*,char const*,int ) ;

__attribute__((used)) static BOOL copy_value(const char *ptr, void **value, DWORD size)
{
    if (!ptr || !size) return TRUE;

    *value = HeapAlloc(GetProcessHeap(), 0, size);
    if (!*value)
    {
        ERR("Failed to allocate value memory.\n");
        return FALSE;
    }

    memcpy(*value, ptr, size);

    return TRUE;
}
