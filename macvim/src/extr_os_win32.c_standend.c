
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ g_attrPreStandout ;
 int textattr (scalar_t__) ;

__attribute__((used)) static void
standend(void)
{
    if (g_attrPreStandout)
    {
 textattr(g_attrPreStandout);
 g_attrPreStandout = 0;
    }
}
