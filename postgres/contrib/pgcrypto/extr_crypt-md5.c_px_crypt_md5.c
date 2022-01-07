
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef unsigned char uint8 ;
typedef int PX_MD ;


 int MD5_SIZE ;
 int _crypt_to64 (char*,unsigned long,int) ;
 int px_find_digest (char*,int **) ;
 int px_md_finish (int *,unsigned char*) ;
 int px_md_free (int *) ;
 int px_md_reset (int *) ;
 int px_md_update (int *,unsigned char const*,int) ;
 int px_memset (unsigned char*,int ,int) ;
 int strcat (char*,char*) ;
 int strcpy (char*,char*) ;
 int strlen (char const*) ;
 int strncat (char*,char const*,int) ;
 scalar_t__ strncmp (char const*,char*,int) ;

char *
px_crypt_md5(const char *pw, const char *salt, char *passwd, unsigned dstlen)
{
 static char *magic = "$1$";


 static char *p;
 static const char *sp,
      *ep;
 unsigned char final[MD5_SIZE];
 int sl,
    pl,
    i;
 PX_MD *ctx,
      *ctx1;
 int err;
 unsigned long l;

 if (!passwd || dstlen < 120)
  return ((void*)0);


 sp = salt;


 if (strncmp(sp, magic, strlen(magic)) == 0)
  sp += strlen(magic);


 for (ep = sp; *ep && *ep != '$' && ep < (sp + 8); ep++)
  continue;


 sl = ep - sp;


 err = px_find_digest("md5", &ctx);
 if (err)
  return ((void*)0);
 err = px_find_digest("md5", &ctx1);


 px_md_update(ctx, (const uint8 *) pw, strlen(pw));


 px_md_update(ctx, (uint8 *) magic, strlen(magic));


 px_md_update(ctx, (const uint8 *) sp, sl);


 px_md_update(ctx1, (const uint8 *) pw, strlen(pw));
 px_md_update(ctx1, (const uint8 *) sp, sl);
 px_md_update(ctx1, (const uint8 *) pw, strlen(pw));
 px_md_finish(ctx1, final);
 for (pl = strlen(pw); pl > 0; pl -= MD5_SIZE)
  px_md_update(ctx, final, pl > MD5_SIZE ? MD5_SIZE : pl);


 px_memset(final, 0, sizeof final);


 for (i = strlen(pw); i; i >>= 1)
  if (i & 1)
   px_md_update(ctx, final, 1);
  else
   px_md_update(ctx, (const uint8 *) pw, 1);


 strcpy(passwd, magic);
 strncat(passwd, sp, sl);
 strcat(passwd, "$");

 px_md_finish(ctx, final);






 for (i = 0; i < 1000; i++)
 {
  px_md_reset(ctx1);
  if (i & 1)
   px_md_update(ctx1, (const uint8 *) pw, strlen(pw));
  else
   px_md_update(ctx1, final, MD5_SIZE);

  if (i % 3)
   px_md_update(ctx1, (const uint8 *) sp, sl);

  if (i % 7)
   px_md_update(ctx1, (const uint8 *) pw, strlen(pw));

  if (i & 1)
   px_md_update(ctx1, final, MD5_SIZE);
  else
   px_md_update(ctx1, (const uint8 *) pw, strlen(pw));
  px_md_finish(ctx1, final);
 }

 p = passwd + strlen(passwd);

 l = (final[0] << 16) | (final[6] << 8) | final[12];
 _crypt_to64(p, l, 4);
 p += 4;
 l = (final[1] << 16) | (final[7] << 8) | final[13];
 _crypt_to64(p, l, 4);
 p += 4;
 l = (final[2] << 16) | (final[8] << 8) | final[14];
 _crypt_to64(p, l, 4);
 p += 4;
 l = (final[3] << 16) | (final[9] << 8) | final[15];
 _crypt_to64(p, l, 4);
 p += 4;
 l = (final[4] << 16) | (final[10] << 8) | final[5];
 _crypt_to64(p, l, 4);
 p += 4;
 l = final[11];
 _crypt_to64(p, l, 2);
 p += 2;
 *p = '\0';


 px_memset(final, 0, sizeof final);

 px_md_free(ctx1);
 px_md_free(ctx);

 return passwd;
}
