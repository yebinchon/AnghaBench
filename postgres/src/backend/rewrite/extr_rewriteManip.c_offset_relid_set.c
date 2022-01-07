
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * Relids ;


 int * bms_add_member (int *,int) ;
 int bms_next_member (int *,int) ;

__attribute__((used)) static Relids
offset_relid_set(Relids relids, int offset)
{
 Relids result = ((void*)0);
 int rtindex;

 rtindex = -1;
 while ((rtindex = bms_next_member(relids, rtindex)) >= 0)
  result = bms_add_member(result, rtindex + offset);
 return result;
}
