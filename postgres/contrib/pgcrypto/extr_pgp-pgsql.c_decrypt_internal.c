
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int text ;
struct debug_expect {scalar_t__ expect; } ;
typedef int bytea ;
typedef int PGP_Context ;
typedef int MBuf ;


 int SET_VARSIZE (int *,int) ;
 scalar_t__ VARDATA_ANY (int *) ;
 int VARHDRSZ ;
 scalar_t__ VARSIZE_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int check_expect (int *,struct debug_expect*) ;
 int clear_and_pfree (int *) ;
 int * convert_from_utf8 (int *) ;
 int * create_mbuf_from_vardata (int *) ;
 int init_work (int **,int,int *,struct debug_expect*) ;
 int mbuf_append (int *,int *,int) ;
 int * mbuf_create (scalar_t__) ;
 int * mbuf_create_from_data (int *,int) ;
 int mbuf_free (int *) ;
 int mbuf_steal_data (int *,int **) ;
 int pgp_decrypt (int *,int *,int *) ;
 int pgp_free (int *) ;
 int pgp_get_unicode_mode (int *) ;
 int pgp_set_pubkey (int *,int *,int *,int,int) ;
 int pgp_set_symkey (int *,int *,int) ;
 int px_THROW_ERROR (int) ;
 int px_set_debug_handler (int *) ;

__attribute__((used)) static bytea *
decrypt_internal(int is_pubenc, int need_text, text *data,
     text *key, text *keypsw, text *args)
{
 int err;
 MBuf *src = ((void*)0),
      *dst = ((void*)0);
 uint8 tmp[VARHDRSZ];
 uint8 *restmp;
 bytea *res;
 int res_len;
 PGP_Context *ctx = ((void*)0);
 struct debug_expect ex;
 int got_unicode = 0;


 init_work(&ctx, need_text, args, &ex);

 src = mbuf_create_from_data((uint8 *) VARDATA_ANY(data),
        VARSIZE_ANY_EXHDR(data));
 dst = mbuf_create(VARSIZE_ANY(data) + 2048);




 mbuf_append(dst, tmp, VARHDRSZ);




 if (is_pubenc)
 {
  uint8 *psw = ((void*)0);
  int psw_len = 0;
  MBuf *kbuf;

  if (keypsw)
  {
   psw = (uint8 *) VARDATA_ANY(keypsw);
   psw_len = VARSIZE_ANY_EXHDR(keypsw);
  }
  kbuf = create_mbuf_from_vardata(key);
  err = pgp_set_pubkey(ctx, kbuf, psw, psw_len, 1);
  mbuf_free(kbuf);
 }
 else
  err = pgp_set_symkey(ctx, (uint8 *) VARDATA_ANY(key),
        VARSIZE_ANY_EXHDR(key));


 if (err >= 0)
 {
  err = pgp_decrypt(ctx, src, dst);

  if (ex.expect)
   check_expect(ctx, &ex);


  got_unicode = pgp_get_unicode_mode(ctx);
 }

 mbuf_free(src);
 pgp_free(ctx);

 if (err)
 {
  px_set_debug_handler(((void*)0));
  mbuf_free(dst);
  px_THROW_ERROR(err);
 }

 res_len = mbuf_steal_data(dst, &restmp);
 mbuf_free(dst);


 res = (bytea *) restmp;
 SET_VARSIZE(res, res_len);

 if (need_text && got_unicode)
 {
  text *utf = convert_from_utf8(res);

  if (utf != res)
  {
   clear_and_pfree(res);
   res = utf;
  }
 }
 px_set_debug_handler(((void*)0));

 return res;
}
