
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int data; } ;
struct TYPE_5__ {scalar_t__ count; TYPE_1__ data; } ;
typedef TYPE_2__ BloomBuildState ;


 int BLCKSZ ;
 int BloomInitPage (int ,int ) ;
 int memset (int ,int ,int ) ;

__attribute__((used)) static void
initCachedPage(BloomBuildState *buildstate)
{
 memset(buildstate->data.data, 0, BLCKSZ);
 BloomInitPage(buildstate->data.data, 0);
 buildstate->count = 0;
}
