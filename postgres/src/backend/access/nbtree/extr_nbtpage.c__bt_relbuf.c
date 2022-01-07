
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Buffer ;


 int UnlockReleaseBuffer (int ) ;

void
_bt_relbuf(Relation rel, Buffer buf)
{
 UnlockReleaseBuffer(buf);
}
