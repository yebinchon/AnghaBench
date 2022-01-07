
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct ead_msg_encrypted {int hash; } ;


 int W ;
 int memset (int ,int ,int) ;
 int sha_init (int *) ;
 int sha_transform (int *,unsigned char*,int ) ;

__attribute__((used)) static void
ead_hash_message(struct ead_msg_encrypted *enc, uint32_t *hash, int len)
{
 unsigned char *data = (unsigned char *) enc;


 sha_init(hash);
 memset(enc->hash, 0, sizeof(enc->hash));
 while (len > 0) {
  sha_transform(hash, data, W);
  len -= 64;
  data += 64;
 }
}
