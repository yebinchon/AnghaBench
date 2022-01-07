
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t ULONG ;
typedef size_t UINT ;
struct TYPE_8__ {size_t dwStreams; } ;
struct TYPE_9__ {TYPE_2__** ppStreams; TYPE_3__ fInfo; } ;
struct TYPE_6__ {scalar_t__ fccType; } ;
struct TYPE_7__ {TYPE_1__ sInfo; } ;
typedef size_t LONG ;
typedef TYPE_4__ IAVIFileImpl ;
typedef scalar_t__ DWORD ;


 int assert (int) ;

__attribute__((used)) static ULONG AVIFILE_SearchStream(const IAVIFileImpl *This, DWORD fcc, LONG lSkip)
{
  UINT i;
  UINT nStream;


  assert(lSkip >= 0);

  if (fcc != 0) {

    nStream = (ULONG)-1;
    for (i = 0; i < This->fInfo.dwStreams; i++) {
      assert(This->ppStreams[i] != ((void*)0));

      if (This->ppStreams[i]->sInfo.fccType == fcc) {
 if (lSkip == 0) {
   nStream = i;
   break;
 } else
   lSkip--;
      }
    }
  } else
    nStream = lSkip;

  return nStream;
}
