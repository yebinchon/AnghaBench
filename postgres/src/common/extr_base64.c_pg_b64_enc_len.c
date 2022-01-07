
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
int
pg_b64_enc_len(int srclen)
{

 return (srclen + 2) * 4 / 3;
}
