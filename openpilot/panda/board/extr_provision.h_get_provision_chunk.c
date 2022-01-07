
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef char uint8_t ;


 int PROVISION_CHUNK_LEN ;
 scalar_t__ memcmp (char*,char*,int) ;
 int memcpy (char*,char*,int) ;

void get_provision_chunk(uint8_t *resp) {
  (void)memcpy(resp, (uint8_t *)0x1fff79e0, PROVISION_CHUNK_LEN);
  if (memcmp(resp, "\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff\xff", 0x20) == 0) {
    (void)memcpy(resp, "unprovisioned\x00\x00\x00testing123\x00\x00\xa3\xa6\x99\xec", 0x20);
  }
}
