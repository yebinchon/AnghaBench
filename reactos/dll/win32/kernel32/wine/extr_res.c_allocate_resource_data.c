
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct resource_data {int codepage; int cbData; struct resource_data* lpData; int lang; } ;
typedef int WORD ;
typedef struct resource_data* LPVOID ;
typedef int DWORD ;
typedef scalar_t__ BOOL ;


 int GetProcessHeap () ;
 struct resource_data* HeapAlloc (int ,int ,int) ;
 int memcpy (struct resource_data*,struct resource_data*,int) ;

__attribute__((used)) static struct resource_data *allocate_resource_data( WORD Language, DWORD codepage,
                                                     LPVOID lpData, DWORD cbData, BOOL copy_data )
{
    struct resource_data *resdata;

    if (!lpData || !cbData)
        return ((void*)0);

    resdata = HeapAlloc( GetProcessHeap(), 0, sizeof *resdata + (copy_data ? cbData : 0) );
    if (resdata)
    {
        resdata->lang = Language;
        resdata->codepage = codepage;
        resdata->cbData = cbData;
        if (copy_data)
        {
            resdata->lpData = &resdata[1];
            memcpy( resdata->lpData, lpData, cbData );
        }
        else
            resdata->lpData = lpData;
    }

    return resdata;
}
