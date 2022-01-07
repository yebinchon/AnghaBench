
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int multiInsertBuffers; } ;
struct TYPE_6__ {int * ri_CopyMultiInsertBuffer; } ;
typedef TYPE_1__ ResultRelInfo ;
typedef TYPE_2__ CopyMultiInsertInfo ;
typedef int CopyMultiInsertBuffer ;


 int * CopyMultiInsertBufferInit (TYPE_1__*) ;
 int lappend (int ,int *) ;

__attribute__((used)) static inline void
CopyMultiInsertInfoSetupBuffer(CopyMultiInsertInfo *miinfo,
          ResultRelInfo *rri)
{
 CopyMultiInsertBuffer *buffer;

 buffer = CopyMultiInsertBufferInit(rri);


 rri->ri_CopyMultiInsertBuffer = buffer;

 miinfo->multiInsertBuffers = lappend(miinfo->multiInsertBuffers, buffer);
}
