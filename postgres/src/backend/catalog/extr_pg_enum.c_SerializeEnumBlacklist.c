
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ Size ;
typedef int Oid ;
typedef int HASH_SEQ_STATUS ;


 int Assert (int) ;
 scalar_t__ EstimateEnumBlacklistSpace () ;
 int InvalidOid ;
 scalar_t__ enum_blacklist ;
 int hash_seq_init (int *,scalar_t__) ;
 scalar_t__ hash_seq_search (int *) ;

void
SerializeEnumBlacklist(void *space, Size size)
{
 Oid *serialized = (Oid *) space;





 Assert(size == EstimateEnumBlacklistSpace());


 if (enum_blacklist)
 {
  HASH_SEQ_STATUS status;
  Oid *value;

  hash_seq_init(&status, enum_blacklist);
  while ((value = (Oid *) hash_seq_search(&status)))
   *serialized++ = *value;
 }


 *serialized = InvalidOid;





 Assert((char *) (serialized + 1) == ((char *) space) + size);
}
