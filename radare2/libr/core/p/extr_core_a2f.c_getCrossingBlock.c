
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ ut64 ;
typedef int Sdb ;


 int Fbb (scalar_t__) ;
 scalar_t__ UT64_MAX ;
 scalar_t__ sdb_atoi (char const*) ;
 char* sdb_const_anext (char const*) ;
 char* sdb_const_get (int *,char const*,int *) ;
 scalar_t__ sdb_num_get (int *,int ,int *) ;

__attribute__((used)) static ut64 getCrossingBlock(Sdb *db, const char *key, ut64 start, ut64 end) {
 ut64 block_start, block_end;
 ut64 nearest_start = UT64_MAX;
 const char *s = sdb_const_get (db, key, ((void*)0));
 const char *next = ((void*)0);
 const char *ptr = ((void*)0);
 if (!s) {
  return UT64_MAX;
 }
 ptr = s;
 do {
  next = sdb_const_anext (ptr);
  block_start = sdb_atoi (ptr);

  if (start == block_start) {
   return start;
  }

  block_end = sdb_num_get (db, Fbb(block_start), ((void*)0));
  if (block_end) {
   if (start > block_start && start < block_end) {

    return block_start;
   }
   if (start < block_start && end >= block_end) {

    if (nearest_start > block_start) {
     nearest_start = block_start;
    }
   }
  }
  ptr = next;
 } while (next);

 return nearest_start;
}
