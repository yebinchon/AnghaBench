
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint32 ;
struct TYPE_2__ {scalar_t__ payload_len; scalar_t__ channel_len; scalar_t__ data; } ;
typedef int Size ;
typedef TYPE_1__ Notification ;


 int Assert (int) ;
 int DatumGetUInt32 (int ) ;
 int hash_any (unsigned char const*,scalar_t__) ;

__attribute__((used)) static uint32
notification_hash(const void *key, Size keysize)
{
 const Notification *k = *(const Notification *const *) key;

 Assert(keysize == sizeof(Notification *));

 return DatumGetUInt32(hash_any((const unsigned char *) k->data,
           k->channel_len + k->payload_len + 1));
}
