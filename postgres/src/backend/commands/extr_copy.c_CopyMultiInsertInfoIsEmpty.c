
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ bufferedTuples; } ;
typedef TYPE_1__ CopyMultiInsertInfo ;



__attribute__((used)) static inline bool
CopyMultiInsertInfoIsEmpty(CopyMultiInsertInfo *miinfo)
{
 return miinfo->bufferedTuples == 0;
}
