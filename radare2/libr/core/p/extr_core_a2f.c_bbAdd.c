
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;
typedef int Sdb ;


 int Fbb (scalar_t__) ;
 int FbbTo (scalar_t__) ;
 scalar_t__ UT64_MAX ;
 scalar_t__ getCrossingBlock (int *,char*,scalar_t__,scalar_t__) ;
 int sdb_array_add_num (int *,char*,scalar_t__,int ) ;
 int sdb_array_set_num (int *,int ,int,scalar_t__,int ) ;
 int sdb_num_max (int *,char*,scalar_t__,int ) ;
 int sdb_num_min (int *,char*,scalar_t__,int ) ;
 int sdb_num_set (int *,int ,scalar_t__,int ) ;

__attribute__((used)) static int bbAdd(Sdb *db, ut64 from, ut64 to, ut64 jump, ut64 fail) {
 ut64 block_start = getCrossingBlock (db, "bbs", from, to);
 int add = 1;
 if (block_start == UT64_MAX) {

 } else if (block_start == from) {

  add = 0;
 } else {
  if (from > block_start) {


   sdb_num_set (db, Fbb(block_start), from, 0);
   sdb_num_set (db, FbbTo(block_start), from, 0);
   sdb_array_set_num (db, FbbTo(block_start), 0, from, 0);
   sdb_array_set_num (db, FbbTo(block_start), 1, UT64_MAX, 0);
  } else {

   to = block_start;
   jump = block_start;
   fail = UT64_MAX;
  }
 }
 if (add) {
  sdb_array_add_num (db, "bbs", from, 0);
  sdb_num_set (db, Fbb(from), to, 0);
  sdb_array_set_num (db, FbbTo(from), 0, jump, 0);
  sdb_array_set_num (db, FbbTo(from), 1, fail, 0);
  sdb_num_min (db, "min", from, 0);
  sdb_num_max (db, "max", to, 0);
 }
 return 0;
}
