
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char WCHAR ;
typedef int UINT ;
typedef int DWORD ;
typedef char BYTE ;


 int CHECK_ENOUGH_MEMORY (char*) ;
 char* GetMultiByteString (char*) ;
 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,char*) ;
 int fprintf (int ,char*,int ,char*) ;
 int getAppName () ;
 int lstrlenW (char*) ;
 int stderr ;
 int strtoulW (char*,char**,int) ;

__attribute__((used)) static BYTE* convertHexCSVToHex(WCHAR *str, DWORD *size)
{
    WCHAR *s;
    BYTE *d, *data;


    *size=(lstrlenW(str)+1)/2;
    data=HeapAlloc(GetProcessHeap(), 0, *size);
    CHECK_ENOUGH_MEMORY(data);

    s = str;
    d = data;
    *size=0;
    while (*s != '\0') {
        UINT wc;
        WCHAR *end;

        wc = strtoulW(s,&end,16);
        if (end == s || wc > 0xff || (*end && *end != ',')) {
            char* strA = GetMultiByteString(s);
            fprintf(stderr,"%S: ERROR converting CSV hex stream. Invalid value at '%s'\n",
                    getAppName(), strA);
            HeapFree(GetProcessHeap(), 0, data);
            HeapFree(GetProcessHeap(), 0, strA);
            return ((void*)0);
        }
        *d++ =(BYTE)wc;
        (*size)++;
        if (*end) end++;
        s = end;
    }

    return data;
}
