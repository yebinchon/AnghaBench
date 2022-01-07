
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TRACKBAR_INFO ;
typedef int INT ;
typedef int BOOL ;


 int TB_ENDTRACK ;
 int TRUE ;
 int notify_with_scroll (int const*,int ) ;

__attribute__((used)) static inline BOOL
TRACKBAR_KeyUp (const TRACKBAR_INFO *infoPtr, INT nVirtKey)
{
    switch (nVirtKey) {
    case 132:
    case 128:
    case 129:
    case 135:
    case 131:
    case 130:
    case 133:
    case 134:
        notify_with_scroll (infoPtr, TB_ENDTRACK);
    }
    return TRUE;
}
