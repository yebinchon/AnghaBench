
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int LRESULT ;
typedef scalar_t__ LPNMLISTVIEW ;
typedef int LPNMHDR ;
typedef int LISTVIEW_INFO ;
typedef int INT ;


 int TRACE (char*,int ,int ) ;
 int debugnmlistview (scalar_t__) ;
 int notify_hdr (int const*,int ,int ) ;

__attribute__((used)) static inline LRESULT notify_listview(const LISTVIEW_INFO *infoPtr, INT code, LPNMLISTVIEW plvnm)
{
    TRACE("(code=%d, plvnm=%s)\n", code, debugnmlistview(plvnm));
    return notify_hdr(infoPtr, code, (LPNMHDR)plvnm);
}
