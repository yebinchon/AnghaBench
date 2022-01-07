
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int * user_df; int * offsets; int * dt; } ;
typedef TYPE_1__ DataFormat ;


 int GetProcessHeap () ;
 int HeapFree (int ,int ,int *) ;
 int TRACE (char*,TYPE_1__*) ;

void release_DataFormat(DataFormat * format)
{
    TRACE("Deleting DataFormat: %p\n", format);

    HeapFree(GetProcessHeap(), 0, format->dt);
    format->dt = ((void*)0);
    HeapFree(GetProcessHeap(), 0, format->offsets);
    format->offsets = ((void*)0);
    HeapFree(GetProcessHeap(), 0, format->user_df);
    format->user_df = ((void*)0);
}
