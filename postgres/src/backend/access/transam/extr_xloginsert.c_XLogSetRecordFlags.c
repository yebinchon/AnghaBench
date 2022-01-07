
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;


 int Assert (int ) ;
 int begininsert_called ;
 int curinsert_flags ;

void
XLogSetRecordFlags(uint8 flags)
{
 Assert(begininsert_called);
 curinsert_flags = flags;
}
