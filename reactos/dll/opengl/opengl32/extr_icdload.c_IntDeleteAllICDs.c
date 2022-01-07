
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ICD_Data {int hModule; struct ICD_Data* next; } ;


 int EnterCriticalSection (int *) ;
 int FreeLibrary (int ) ;
 int GetProcessHeap () ;
 int HeapFree (int ,int ,struct ICD_Data*) ;
 struct ICD_Data* ICD_Data_List ;
 int icdload_cs ;

void IntDeleteAllICDs(void)
{
    struct ICD_Data* data;

    EnterCriticalSection(&icdload_cs);

    while (ICD_Data_List != ((void*)0))
    {
        data = ICD_Data_List;
        ICD_Data_List = data->next;

        FreeLibrary(data->hModule);
        HeapFree(GetProcessHeap(), 0, data);
    }
}
