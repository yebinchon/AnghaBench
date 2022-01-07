
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * LPSTR ;
typedef int* LPINT ;
typedef int LPCSTR ;
typedef int BOOL ;


 int FALSE ;
 int ProcessHeap ;
 int * RtlAllocateHeap (int ,int ,scalar_t__) ;
 int RtlFreeHeap (int ,int ,int *) ;
 int ** RtlReAllocateHeap (int ,int ,int **,int) ;
 int TRUE ;
 int strcpy (int *,int ) ;
 scalar_t__ strlen (int ) ;

BOOL
add_entry(
    LPINT ac,
    LPSTR **arg,
    LPCSTR entry)
{
    LPSTR q;
    LPSTR *oldarg;

    q = RtlAllocateHeap(ProcessHeap, 0, strlen(entry) + 1);
    if (q == ((void*)0))
        return FALSE;

    strcpy(q, entry);
    oldarg = *arg;
    *arg = RtlReAllocateHeap(ProcessHeap, 0, oldarg, (*ac + 2) * sizeof(LPSTR));
    if (*arg == ((void*)0))
    {
        RtlFreeHeap(ProcessHeap, 0, q);
        *arg = oldarg;
        return FALSE;
    }


    (*arg)[*ac] = q;
    (*arg)[++(*ac)] = ((void*)0);

    return TRUE;
}
