
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TOOLTIPS_INFO ;


 int TOOLTIPS_Show (int *,int ) ;
 int TRUE ;

__attribute__((used)) static void
TOOLTIPS_TrackShow (TOOLTIPS_INFO *infoPtr)
{
    TOOLTIPS_Show(infoPtr, TRUE);
}
