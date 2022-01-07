
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8 ;
typedef int text ;
struct debug_expect {scalar_t__ debug; } ;
typedef int bytea ;
typedef int PGP_Context ;
typedef int MBuf ;


 int SET_VARSIZE (int *,int) ;
 scalar_t__ VARDATA_ANY (int *) ;
 int VARHDRSZ ;
 scalar_t__ VARSIZE_ANY (int *) ;
 int VARSIZE_ANY_EXHDR (int *) ;
 int clear_and_pfree (int *) ;
 int * convert_to_utf8 (int *) ;
 int * create_mbuf_from_vardata (int *) ;
 int init_work (int **,int,int *,struct debug_expect*) ;
 int mbuf_append (int *,int *,int) ;
 int * mbuf_create (scalar_t__) ;
 int mbuf_free (int *) ;
 int mbuf_steal_data (int *,int **) ;
 int pgp_encrypt (int *,int *,int *) ;
 int pgp_free (int *) ;
 scalar_t__ pgp_get_unicode_mode (int *) ;
 int pgp_set_pubkey (int *,int *,int *,int ,int ) ;
 int pgp_set_symkey (int *,int *,int ) ;
 int px_THROW_ERROR (int) ;
 int px_set_debug_handler (int *) ;

__attribute__((used)) static bytea *
encrypt_internal(int is_pubenc, int is_text,
     text *data, text *key, text *args)
{
 MBuf *src,
      *dst;
 uint8 tmp[VARHDRSZ];
 uint8 *restmp;
 bytea *res;
 int res_len;
 PGP_Context *ctx;
 int err;
 struct debug_expect ex;
 text *tmp_data = ((void*)0);

 init_work(&ctx, is_text, args, &ex);

 if (is_text && pgp_get_unicode_mode(ctx))
 {
  tmp_data = convert_to_utf8(data);
  if (tmp_data == data)
   tmp_data = ((void*)0);
  else
   data = tmp_data;
 }

 src = create_mbuf_from_vardata(data);
 dst = mbuf_create(VARSIZE_ANY(data) + 128);




 mbuf_append(dst, tmp, VARHDRSZ);




 if (is_pubenc)
 {
  MBuf *kbuf = create_mbuf_from_vardata(key);

  err = pgp_set_pubkey(ctx, kbuf,
        ((void*)0), 0, 0);
  mbuf_free(kbuf);
 }
 else
  err = pgp_set_symkey(ctx, (uint8 *) VARDATA_ANY(key),
        VARSIZE_ANY_EXHDR(key));




 if (err >= 0)
  err = pgp_encrypt(ctx, src, dst);




 if (err)
 {
  if (ex.debug)
   px_set_debug_handler(((void*)0));
  if (tmp_data)
   clear_and_pfree(tmp_data);
  pgp_free(ctx);
  mbuf_free(src);
  mbuf_free(dst);
  px_THROW_ERROR(err);
 }


 res_len = mbuf_steal_data(dst, &restmp);
 res = (bytea *) restmp;
 SET_VARSIZE(res, res_len);

 if (tmp_data)
  clear_and_pfree(tmp_data);
 pgp_free(ctx);
 mbuf_free(src);
 mbuf_free(dst);

 px_set_debug_handler(((void*)0));

 return res;
}
