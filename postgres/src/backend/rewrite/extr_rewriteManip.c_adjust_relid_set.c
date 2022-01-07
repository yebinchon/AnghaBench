
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Relids ;


 int bms_add_member (int ,int) ;
 int bms_copy (int ) ;
 int bms_del_member (int ,int) ;
 scalar_t__ bms_is_member (int,int ) ;

__attribute__((used)) static Relids
adjust_relid_set(Relids relids, int oldrelid, int newrelid)
{
 if (bms_is_member(oldrelid, relids))
 {

  relids = bms_copy(relids);

  relids = bms_del_member(relids, oldrelid);
  relids = bms_add_member(relids, newrelid);
 }
 return relids;
}
