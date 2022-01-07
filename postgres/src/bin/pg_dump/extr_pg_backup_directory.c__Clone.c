
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int lclContext ;
struct TYPE_3__ {int * formatData; } ;
typedef TYPE_1__ ArchiveHandle ;


 int memcpy (int *,int *,int) ;
 scalar_t__ pg_malloc (int) ;

__attribute__((used)) static void
_Clone(ArchiveHandle *AH)
{
 lclContext *ctx = (lclContext *) AH->formatData;

 AH->formatData = (lclContext *) pg_malloc(sizeof(lclContext));
 memcpy(AH->formatData, ctx, sizeof(lclContext));
 ctx = (lclContext *) AH->formatData;
}
