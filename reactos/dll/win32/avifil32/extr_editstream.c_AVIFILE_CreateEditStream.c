
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_8__ {int * lpVtbl; } ;
struct TYPE_6__ {int * lpVtbl; } ;
struct TYPE_7__ {int ref; TYPE_3__ IAVIStream_iface; TYPE_1__ IAVIEditStream_iface; } ;
typedef int LPARAM ;
typedef int IAVIStream ;
typedef TYPE_2__ IAVIEditStreamImpl ;


 int GetProcessHeap () ;
 int HEAP_ZERO_MEMORY ;
 TYPE_2__* HeapAlloc (int ,int ,int) ;
 int IAVIStream_Create (TYPE_3__*,int ,int ) ;
 int ieditstast ;
 int ieditstream ;

__attribute__((used)) static IAVIEditStreamImpl *AVIFILE_CreateEditStream(IAVIStream *pstream)
{
  IAVIEditStreamImpl *pedit = ((void*)0);

  pedit = HeapAlloc(GetProcessHeap(), HEAP_ZERO_MEMORY, sizeof(IAVIEditStreamImpl));
  if (pedit == ((void*)0))
    return ((void*)0);

  pedit->IAVIEditStream_iface.lpVtbl = &ieditstream;
  pedit->IAVIStream_iface.lpVtbl = &ieditstast;
  pedit->ref = 1;

  IAVIStream_Create(&pedit->IAVIStream_iface, (LPARAM)pstream, 0);

  return pedit;
}
