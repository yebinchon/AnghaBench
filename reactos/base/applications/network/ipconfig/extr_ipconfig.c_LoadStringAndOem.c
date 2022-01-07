
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UINT ;
typedef int TCHAR ;
typedef int * LPTSTR ;
typedef int HINSTANCE ;


 int CharToOem (int *,int *) ;
 scalar_t__ HeapAlloc (int ,int ,int) ;
 int HeapFree (int ,int ,int *) ;
 int LoadString (int ,int ,int *,int) ;
 int ProcessHeap ;

int LoadStringAndOem(HINSTANCE hInst,
                     UINT uID,
                     LPTSTR szNode,
                     int byteSize)
{
    TCHAR *szTmp;
    int res;

    szTmp = (LPTSTR)HeapAlloc(ProcessHeap, 0, byteSize);
    if (szTmp == ((void*)0))
    {
        return 0;
    }

    res = LoadString(hInst, uID, szTmp, byteSize);
    CharToOem(szTmp, szNode);
    HeapFree(ProcessHeap, 0, szTmp);
    return res;
}
