
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct px_crypt_algo {char* (* crypt ) (char const*,char const*,char*,unsigned int) ;int id_len; scalar_t__ id; } ;


 struct px_crypt_algo* px_crypt_list ;
 scalar_t__ strncmp (char const*,scalar_t__,int ) ;
 char* stub1 (char const*,char const*,char*,unsigned int) ;

char *
px_crypt(const char *psw, const char *salt, char *buf, unsigned len)
{
 const struct px_crypt_algo *c;

 for (c = px_crypt_list; c->id; c++)
 {
  if (!c->id_len)
   break;
  if (strncmp(salt, c->id, c->id_len) == 0)
   break;
 }

 if (c->crypt == ((void*)0))
  return ((void*)0);

 return c->crypt(psw, salt, buf, len);
}
