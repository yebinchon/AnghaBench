
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TRACKBAR_INFO ;
typedef int NMHDR ;
typedef int INT ;


 int notify_hdr (int const*,int ,int *) ;

__attribute__((used)) static inline int notify (const TRACKBAR_INFO *infoPtr, INT code)
{
    NMHDR nmh;
    return notify_hdr(infoPtr, code, &nmh);
}
