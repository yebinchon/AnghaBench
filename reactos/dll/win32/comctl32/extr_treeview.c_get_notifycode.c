
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bNtfUnicode; } ;
typedef TYPE_1__ TREEVIEW_INFO ;
typedef int INT ;


 int TVN_BEGINDRAGA ;

 int TVN_BEGINLABELEDITA ;

 int TVN_BEGINRDRAGA ;

 int TVN_DELETEITEMA ;

 int TVN_ENDLABELEDITA ;

 int TVN_GETDISPINFOA ;

 int TVN_GETINFOTIPA ;

 int TVN_ITEMEXPANDEDA ;

 int TVN_ITEMEXPANDINGA ;

 int TVN_SELCHANGEDA ;

 int TVN_SELCHANGINGA ;

 int TVN_SETDISPINFOA ;


__attribute__((used)) static INT get_notifycode(const TREEVIEW_INFO *infoPtr, INT code)
{
    if (!infoPtr->bNtfUnicode) {
 switch (code) {
 case 129: return TVN_SELCHANGINGA;
 case 130: return TVN_SELCHANGEDA;
 case 134: return TVN_GETDISPINFOA;
 case 128: return TVN_SETDISPINFOA;
 case 131: return TVN_ITEMEXPANDINGA;
 case 132: return TVN_ITEMEXPANDEDA;
 case 139: return TVN_BEGINDRAGA;
 case 137: return TVN_BEGINRDRAGA;
 case 136: return TVN_DELETEITEMA;
 case 138: return TVN_BEGINLABELEDITA;
 case 135: return TVN_ENDLABELEDITA;
 case 133: return TVN_GETINFOTIPA;
 }
    }
    return code;
}
