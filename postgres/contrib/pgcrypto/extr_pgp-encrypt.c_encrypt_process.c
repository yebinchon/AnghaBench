
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
struct EncStat {int buf; int ciph; } ;
typedef int PushFilter ;


 int ENCBUF ;
 int pgp_cfb_encrypt (int ,int const*,int,int ) ;
 int pushf_write (int *,int ,int) ;

__attribute__((used)) static int
encrypt_process(PushFilter *next, void *priv, const uint8 *data, int len)
{
 int res;
 struct EncStat *st = priv;
 int avail = len;

 while (avail > 0)
 {
  int tmplen = avail > ENCBUF ? ENCBUF : avail;

  res = pgp_cfb_encrypt(st->ciph, data, tmplen, st->buf);
  if (res < 0)
   return res;

  res = pushf_write(next, st->buf, tmplen);
  if (res < 0)
   return res;

  data += tmplen;
  avail -= tmplen;
 }
 return 0;
}
