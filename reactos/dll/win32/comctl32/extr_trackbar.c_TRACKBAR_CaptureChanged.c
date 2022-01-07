
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TRACKBAR_INFO ;
typedef int LRESULT ;


 int TB_ENDTRACK ;
 int notify_with_scroll (int const*,int ) ;

__attribute__((used)) static LRESULT
TRACKBAR_CaptureChanged (const TRACKBAR_INFO *infoPtr)
{
    notify_with_scroll (infoPtr, TB_ENDTRACK);
    return 0;
}
