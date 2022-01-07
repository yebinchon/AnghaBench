
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lclContext ;
struct TYPE_3__ {scalar_t__ formatData; } ;
typedef TYPE_1__ ArchiveHandle ;


 int free (int *) ;

__attribute__((used)) static void
_DeClone(ArchiveHandle *AH)
{
 lclContext *ctx = (lclContext *) AH->formatData;

 free(ctx);
}
