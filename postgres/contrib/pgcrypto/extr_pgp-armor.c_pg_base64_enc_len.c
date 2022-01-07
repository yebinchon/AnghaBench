
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
__attribute__((used)) static unsigned
pg_base64_enc_len(unsigned srclen)
{



 return (srclen + 2) * 4 / 3 + srclen / (76 * 3 / 4);
}
