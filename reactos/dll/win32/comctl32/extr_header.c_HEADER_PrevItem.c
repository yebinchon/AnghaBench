
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int INT ;
typedef int HEADER_INFO ;


 scalar_t__ HEADER_IndexToOrder (int const*,int ) ;
 int HEADER_OrderToIndex (int const*,scalar_t__) ;

__attribute__((used)) static INT
HEADER_PrevItem(const HEADER_INFO *infoPtr, INT iItem)
{
    return HEADER_OrderToIndex(infoPtr, HEADER_IndexToOrder(infoPtr, iItem)-1);
}
