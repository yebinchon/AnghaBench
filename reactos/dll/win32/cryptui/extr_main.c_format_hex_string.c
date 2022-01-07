
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int DWORD ;
typedef char* BYTE ;


 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int swprintf (char*,char const*,char*) ;

__attribute__((used)) static WCHAR *format_hex_string(void *pb, DWORD cb)
{
    WCHAR *buf = HeapAlloc(GetProcessHeap(), 0, (cb * 3 + 1) * sizeof(WCHAR));

    if (buf)
    {
        static const WCHAR fmt[] = { '%','0','2','x',' ',0 };
        DWORD i;
        WCHAR *ptr;

        for (i = 0, ptr = buf; i < cb; i++, ptr += 3)
            swprintf(ptr, fmt, ((BYTE *)pb)[i]);
    }
    return buf;
}
