
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FALSE ;
 scalar_t__ s_JapaneseEraCount ;
 int s_bIsGannenCached ;

void JapaneseEra_ClearCache(void)
{
    s_bIsGannenCached = FALSE;
    s_JapaneseEraCount = 0;
}
