
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_17__ {scalar_t__ nid; int (* einit ) (int *,unsigned char const*,int ,unsigned char const*,int) ;int (* dinit ) (int *,unsigned char const*,int ,unsigned char const*,int) ;int flags; int block_size; int (* init ) (TYPE_1__*,unsigned char const*,unsigned char const*,int) ;int key_len; scalar_t__ ctx_size; int * prov; int * (* newctx ) (int ) ;} ;
struct TYPE_16__ {int encrypt; unsigned long flags; unsigned char const* oiv; unsigned char const* iv; int block_mask; TYPE_2__ const* cipher; scalar_t__ final_used; scalar_t__ buf_len; int num; int key_len; int * cipher_data; int * engine; int * provctx; TYPE_2__ const* fetched_cipher; } ;
typedef TYPE_1__ EVP_CIPHER_CTX ;
typedef TYPE_2__ const EVP_CIPHER ;
typedef int ENGINE ;


 TYPE_2__ const* ENGINE_get_cipher (int *,int) ;
 int * ENGINE_get_cipher_engine (scalar_t__) ;
 int ENGINE_init (int *) ;
 int ERR_R_MALLOC_FAILURE ;
 int EVP_CIPHER_CTX_FLAG_WRAP_ALLOW ;
 int EVP_CIPHER_CTX_cipher (TYPE_1__*) ;
 int EVP_CIPHER_CTX_ctrl (TYPE_1__*,int ,int ,int *) ;
 int EVP_CIPHER_CTX_iv_length (TYPE_1__*) ;
 int EVP_CIPHER_CTX_key_length (TYPE_1__*) ;
 int EVP_CIPHER_CTX_mode (TYPE_1__*) ;
 int EVP_CIPHER_CTX_reset (TYPE_1__*) ;
 int EVP_CIPHER_CTX_set_padding (TYPE_1__*,int ) ;
 TYPE_2__ const* EVP_CIPHER_fetch (int *,int ,char*) ;
 int EVP_CIPHER_flags (int ) ;
 int EVP_CIPHER_free (TYPE_2__ const*) ;
 int EVP_CIPH_ALWAYS_CALL_INIT ;


 int EVP_CIPH_CTRL_INIT ;

 int EVP_CIPH_CUSTOM_IV ;

 int EVP_CIPH_NO_PADDING ;


 int EVP_CIPH_WRAP_MODE ;
 int EVP_CTRL_INIT ;
 int EVP_F_EVP_CIPHERINIT_EX ;
 int EVP_R_INITIALIZATION_ERROR ;
 int EVP_R_NO_CIPHER_SET ;
 int EVP_R_WRAP_MODE_NOT_ALLOWED ;
 int EVPerr (int ,int ) ;
 int OBJ_nid2sn (int) ;
 int OPENSSL_assert (int) ;
 int OPENSSL_clear_free (int *,scalar_t__) ;
 int * OPENSSL_zalloc (scalar_t__) ;
 int memcpy (unsigned char const*,unsigned char const*,int) ;
 int ossl_provider_ctx (int *) ;
 int * stub1 (int ) ;
 int stub2 (int *,unsigned char const*,int ,unsigned char const*,int) ;
 int stub3 (int *,unsigned char const*,int ,unsigned char const*,int) ;
 int stub4 (TYPE_1__*,unsigned char const*,unsigned char const*,int) ;

int EVP_CipherInit_ex(EVP_CIPHER_CTX *ctx, const EVP_CIPHER *cipher,
                      ENGINE *impl, const unsigned char *key,
                      const unsigned char *iv, int enc)
{

    ENGINE *tmpimpl = ((void*)0);

    const EVP_CIPHER *tmpcipher;






    if (enc == -1) {
        enc = ctx->encrypt;
    } else {
        if (enc)
            enc = 1;
        ctx->encrypt = enc;
    }

    if (cipher == ((void*)0) && ctx->cipher == ((void*)0)) {
        EVPerr(EVP_F_EVP_CIPHERINIT_EX, EVP_R_NO_CIPHER_SET);
        return 0;
    }
    if (ctx->engine && ctx->cipher
        && (cipher == ((void*)0) || cipher->nid == ctx->cipher->nid))
        goto skip_to_init;

    if (cipher != ((void*)0) && impl == ((void*)0)) {

        tmpimpl = ENGINE_get_cipher_engine(cipher->nid);
    }





    if (ctx->engine != ((void*)0)

            || tmpimpl != ((void*)0)

            || impl != ((void*)0)) {
        if (ctx->cipher == ctx->fetched_cipher)
            ctx->cipher = ((void*)0);
        EVP_CIPHER_free(ctx->fetched_cipher);
        ctx->fetched_cipher = ((void*)0);
        goto legacy;
    }

    tmpcipher = (cipher == ((void*)0)) ? ctx->cipher : cipher;

    if (tmpcipher->prov == ((void*)0)) {
        switch(tmpcipher->nid) {
        case 240:
        case 251:
        case 263:
        case 246:
        case 257:
        case 269:
        case 237:
        case 248:
        case 260:
        case 243:
        case 254:
        case 266:
        case 244:
        case 255:
        case 267:
        case 242:
        case 253:
        case 265:
        case 241:
        case 252:
        case 264:
        case 258:
        case 235:
        case 238:
        case 249:
        case 261:
        case 239:
        case 250:
        case 262:
        case 236:
        case 247:
        case 259:
        case 155:
        case 154:
        case 157:
        case 156:
        case 159:
        case 158:
        case 209:
        case 218:
        case 227:
        case 245:
        case 256:
        case 268:
        case 215:
        case 224:
        case 233:
        case 210:
        case 219:
        case 228:
        case 216:
        case 225:
        case 234:
        case 208:
        case 217:
        case 226:
        case 213:
        case 222:
        case 231:
        case 214:
        case 223:
        case 232:
        case 212:
        case 221:
        case 230:
        case 211:
        case 220:
        case 229:
        case 184:
        case 191:
        case 198:
        case 189:
        case 196:
        case 203:
        case 183:
        case 190:
        case 197:
        case 187:
        case 194:
        case 201:
        case 188:
        case 195:
        case 202:
        case 186:
        case 193:
        case 200:
        case 185:
        case 192:
        case 199:
        case 171:
        case 167:
        case 166:
        case 169:
        case 168:
        case 170:
        case 165:
        case 163:
        case 162:
        case 164:
        case 160:
        case 176:
        case 172:
        case 175:
        case 173:
        case 174:
        case 161:
        case 153:
        case 207:
        case 205:
        case 206:
        case 204:
        case 152:
        case 150:
        case 151:
        case 149:
        case 182:
        case 180:
        case 181:
        case 179:
        case 136:
        case 134:
        case 135:
        case 133:
        case 132:
        case 129:
        case 130:
        case 131:
        case 128:
        case 143:
        case 142:
        case 140:
        case 138:
        case 139:
        case 137:
        case 146:
        case 148:
        case 147:
        case 145:
        case 144:
        case 178:
        case 177:
        case 141:
            break;
        default:
            goto legacy;
        }
    }





    if (cipher != ((void*)0) && ctx->cipher != ((void*)0)) {
        OPENSSL_clear_free(ctx->cipher_data, ctx->cipher->ctx_size);
        ctx->cipher_data = ((void*)0);
    }





    if (cipher != ((void*)0) && ctx->cipher != ((void*)0)) {
        unsigned long flags = ctx->flags;

        EVP_CIPHER_CTX_reset(ctx);

        ctx->encrypt = enc;
        ctx->flags = flags;
    }

    if (cipher == ((void*)0))
        cipher = ctx->cipher;

    if (cipher->prov == ((void*)0)) {





        EVP_CIPHER *provciph =
            EVP_CIPHER_fetch(((void*)0), OBJ_nid2sn(cipher->nid), "");

        if (provciph == ((void*)0)) {
            EVPerr(EVP_F_EVP_CIPHERINIT_EX, EVP_R_INITIALIZATION_ERROR);
            return 0;
        }
        cipher = provciph;
        EVP_CIPHER_free(ctx->fetched_cipher);
        ctx->fetched_cipher = provciph;

    }

    ctx->cipher = cipher;
    if (ctx->provctx == ((void*)0)) {
        ctx->provctx = ctx->cipher->newctx(ossl_provider_ctx(cipher->prov));
        if (ctx->provctx == ((void*)0)) {
            EVPerr(EVP_F_EVP_CIPHERINIT_EX, EVP_R_INITIALIZATION_ERROR);
            return 0;
        }
    }

    if ((ctx->flags & EVP_CIPH_NO_PADDING) != 0) {




        if (!EVP_CIPHER_CTX_set_padding(ctx, 0))
            return 0;
    }

    if (enc) {
        if (ctx->cipher->einit == ((void*)0)) {
            EVPerr(EVP_F_EVP_CIPHERINIT_EX, EVP_R_INITIALIZATION_ERROR);
            return 0;
        }

        return ctx->cipher->einit(ctx->provctx,
                                  key,
                                  key == ((void*)0) ? 0
                                              : EVP_CIPHER_CTX_key_length(ctx),
                                  iv,
                                  iv == ((void*)0) ? 0
                                             : EVP_CIPHER_CTX_iv_length(ctx));
    }

    if (ctx->cipher->dinit == ((void*)0)) {
        EVPerr(EVP_F_EVP_CIPHERINIT_EX, EVP_R_INITIALIZATION_ERROR);
        return 0;
    }

    return ctx->cipher->dinit(ctx->provctx,
                              key,
                              key == ((void*)0) ? 0
                                          : EVP_CIPHER_CTX_key_length(ctx),
                              iv,
                              iv == ((void*)0) ? 0
                                         : EVP_CIPHER_CTX_iv_length(ctx));


 legacy:

    if (cipher != ((void*)0)) {





        if (ctx->cipher) {
            unsigned long flags = ctx->flags;
            EVP_CIPHER_CTX_reset(ctx);

            ctx->encrypt = enc;
            ctx->flags = flags;
        }

        if (impl != ((void*)0)) {
            if (!ENGINE_init(impl)) {
                EVPerr(EVP_F_EVP_CIPHERINIT_EX, EVP_R_INITIALIZATION_ERROR);
                return 0;
            }
        } else {
            impl = tmpimpl;
        }
        if (impl != ((void*)0)) {

            const EVP_CIPHER *c = ENGINE_get_cipher(impl, cipher->nid);

            if (c == ((void*)0)) {





                EVPerr(EVP_F_EVP_CIPHERINIT_EX, EVP_R_INITIALIZATION_ERROR);
                return 0;
            }

            cipher = c;




            ctx->engine = impl;
        } else {
            ctx->engine = ((void*)0);
        }


        ctx->cipher = cipher;
        if (ctx->cipher->ctx_size) {
            ctx->cipher_data = OPENSSL_zalloc(ctx->cipher->ctx_size);
            if (ctx->cipher_data == ((void*)0)) {
                ctx->cipher = ((void*)0);
                EVPerr(EVP_F_EVP_CIPHERINIT_EX, ERR_R_MALLOC_FAILURE);
                return 0;
            }
        } else {
            ctx->cipher_data = ((void*)0);
        }
        ctx->key_len = cipher->key_len;

        ctx->flags &= EVP_CIPHER_CTX_FLAG_WRAP_ALLOW;
        if (ctx->cipher->flags & EVP_CIPH_CTRL_INIT) {
            if (!EVP_CIPHER_CTX_ctrl(ctx, EVP_CTRL_INIT, 0, ((void*)0))) {
                ctx->cipher = ((void*)0);
                EVPerr(EVP_F_EVP_CIPHERINIT_EX, EVP_R_INITIALIZATION_ERROR);
                return 0;
            }
        }
    }

 skip_to_init:

    if (ctx->cipher == ((void*)0))
        return 0;


    OPENSSL_assert(ctx->cipher->block_size == 1
                   || ctx->cipher->block_size == 8
                   || ctx->cipher->block_size == 16);

    if (!(ctx->flags & EVP_CIPHER_CTX_FLAG_WRAP_ALLOW)
        && EVP_CIPHER_CTX_mode(ctx) == EVP_CIPH_WRAP_MODE) {
        EVPerr(EVP_F_EVP_CIPHERINIT_EX, EVP_R_WRAP_MODE_NOT_ALLOWED);
        return 0;
    }

    if (!(EVP_CIPHER_flags(EVP_CIPHER_CTX_cipher(ctx)) & EVP_CIPH_CUSTOM_IV)) {
        switch (EVP_CIPHER_CTX_mode(ctx)) {

        case 270:
        case 272:
            break;

        case 274:
        case 271:

            ctx->num = 0;


        case 275:

            OPENSSL_assert(EVP_CIPHER_CTX_iv_length(ctx) <=
                           (int)sizeof(ctx->iv));
            if (iv)
                memcpy(ctx->oiv, iv, EVP_CIPHER_CTX_iv_length(ctx));
            memcpy(ctx->iv, ctx->oiv, EVP_CIPHER_CTX_iv_length(ctx));
            break;

        case 273:
            ctx->num = 0;

            if (iv)
                memcpy(ctx->iv, iv, EVP_CIPHER_CTX_iv_length(ctx));
            break;

        default:
            return 0;
        }
    }

    if (key || (ctx->cipher->flags & EVP_CIPH_ALWAYS_CALL_INIT)) {
        if (!ctx->cipher->init(ctx, key, iv, enc))
            return 0;
    }
    ctx->buf_len = 0;
    ctx->final_used = 0;
    ctx->block_mask = ctx->cipher->block_size - 1;
    return 1;
}
