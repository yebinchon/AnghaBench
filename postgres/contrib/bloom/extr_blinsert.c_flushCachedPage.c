
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
struct TYPE_5__ {TYPE_1__ data; } ;
typedef int Relation ;
typedef int Page ;
typedef int GenericXLogState ;
typedef int Buffer ;
typedef TYPE_2__ BloomBuildState ;


 int BLCKSZ ;
 int BloomNewBuffer (int ) ;
 int GENERIC_XLOG_FULL_IMAGE ;
 int GenericXLogFinish (int *) ;
 int GenericXLogRegisterBuffer (int *,int ,int ) ;
 int * GenericXLogStart (int ) ;
 int UnlockReleaseBuffer (int ) ;
 int memcpy (int ,int ,int ) ;

__attribute__((used)) static void
flushCachedPage(Relation index, BloomBuildState *buildstate)
{
 Page page;
 Buffer buffer = BloomNewBuffer(index);
 GenericXLogState *state;

 state = GenericXLogStart(index);
 page = GenericXLogRegisterBuffer(state, buffer, GENERIC_XLOG_FULL_IMAGE);
 memcpy(page, buildstate->data.data, BLCKSZ);
 GenericXLogFinish(state);
 UnlockReleaseBuffer(buffer);
}
