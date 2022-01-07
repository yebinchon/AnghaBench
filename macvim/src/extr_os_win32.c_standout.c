
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int WORD ;


 int BACKGROUND_INTENSITY ;
 int FOREGROUND_INTENSITY ;
 int g_attrCurrent ;
 int g_attrPreStandout ;
 int textattr (int ) ;

__attribute__((used)) static void
standout(void)
{
    g_attrPreStandout = g_attrCurrent;
    textattr((WORD) (g_attrCurrent|FOREGROUND_INTENSITY|BACKGROUND_INTENSITY));
}
