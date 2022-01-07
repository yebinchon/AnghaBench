
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_3__ {int * blobs; } ;
typedef size_t DWORD ;
typedef int BYTE ;
typedef TYPE_1__ ASSEMBLY ;


 int * GetData (int *,int *) ;

__attribute__((used)) static BYTE *assembly_get_blob(ASSEMBLY *assembly, DWORD index, ULONG *size)
{
    return GetData(&assembly->blobs[index], size);
}
