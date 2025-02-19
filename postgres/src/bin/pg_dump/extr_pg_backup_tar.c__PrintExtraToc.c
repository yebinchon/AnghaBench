
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_9__ {int * filename; } ;
typedef TYPE_2__ lclTocEntry ;
struct TYPE_10__ {scalar_t__ formatData; } ;
typedef TYPE_3__ TocEntry ;
struct TYPE_8__ {scalar_t__ verbose; } ;
struct TYPE_11__ {TYPE_1__ public; } ;
typedef TYPE_4__ ArchiveHandle ;


 int ahprintf (TYPE_4__*,char*,int *) ;

__attribute__((used)) static void
_PrintExtraToc(ArchiveHandle *AH, TocEntry *te)
{
 lclTocEntry *ctx = (lclTocEntry *) te->formatData;

 if (AH->public.verbose && ctx->filename != ((void*)0))
  ahprintf(AH, "-- File: %s\n", ctx->filename);
}
