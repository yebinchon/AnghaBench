
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relation ;
typedef int Buffer ;


 int ReleaseBuffer (int ) ;

void
_hash_dropbuf(Relation rel, Buffer buf)
{
 ReleaseBuffer(buf);
}
