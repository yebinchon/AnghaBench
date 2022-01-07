
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct RtfData {scalar_t__ ptr; scalar_t__ data; int allocated; } ;
typedef int BOOL ;


 int FALSE ;
 int GetProcessHeap () ;
 char* HeapReAlloc (int ,int ,scalar_t__,int) ;
 int TRUE ;
 int memcpy (scalar_t__,char const*,size_t) ;

__attribute__((used)) static BOOL HLPFILE_RtfAddRawString(struct RtfData* rd, const char* str, size_t sz)
{
    if (rd->ptr + sz >= rd->data + rd->allocated)
    {
        char* new = HeapReAlloc(GetProcessHeap(), 0, rd->data, rd->allocated *= 2);
        if (!new) return FALSE;
        rd->ptr = new + (rd->ptr - rd->data);
        rd->data = new;
    }
    memcpy(rd->ptr, str, sz);
    rd->ptr += sz;

    return TRUE;
}
