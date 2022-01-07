
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,int ) ;
 int RegCloseKey (int *) ;
 int * currentKeyHandle ;
 int currentKeyName ;

__attribute__((used)) static void closeKey(void)
{
    if (currentKeyHandle)
    {
        HeapFree(GetProcessHeap(), 0, currentKeyName);
        RegCloseKey(currentKeyHandle);
        currentKeyHandle = ((void*)0);
    }
}
