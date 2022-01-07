
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TOOLTIPS_INFO ;
typedef int LRESULT ;


 int TOOLTIPS_Hide (int *) ;

__attribute__((used)) static LRESULT
TOOLTIPS_MouseMessage (TOOLTIPS_INFO *infoPtr)
{
    TOOLTIPS_Hide (infoPtr);

    return 0;
}
