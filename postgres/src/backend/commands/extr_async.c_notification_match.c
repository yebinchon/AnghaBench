
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ channel_len; scalar_t__ payload_len; int data; } ;
typedef int Size ;
typedef TYPE_1__ Notification ;


 int Assert (int) ;
 scalar_t__ memcmp (int ,int ,scalar_t__) ;

__attribute__((used)) static int
notification_match(const void *key1, const void *key2, Size keysize)
{
 const Notification *k1 = *(const Notification *const *) key1;
 const Notification *k2 = *(const Notification *const *) key2;

 Assert(keysize == sizeof(Notification *));
 if (k1->channel_len == k2->channel_len &&
  k1->payload_len == k2->payload_len &&
  memcmp(k1->data, k2->data,
      k1->channel_len + k1->payload_len + 2) == 0)
  return 0;
 return 1;
}
