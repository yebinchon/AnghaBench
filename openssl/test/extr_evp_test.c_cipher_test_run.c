
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int aux_err ;
struct TYPE_6__ {scalar_t__ aead; int enc; int cipher; int tag; int iv; int key; } ;
struct TYPE_5__ {char* err; char* aux_err; TYPE_2__* data; } ;
typedef TYPE_1__ EVP_TEST ;
typedef TYPE_2__ CIPHER_DATA ;


 int BIO_snprintf (char*,int,char*,char*,char*,...) ;
 scalar_t__ EVP_CIPHER_iv_length (int ) ;
 scalar_t__ EVP_CIPHER_mode (int ) ;
 scalar_t__ EVP_CIPH_CCM_MODE ;
 scalar_t__ EVP_CIPH_SIV_MODE ;
 scalar_t__ EVP_CIPH_WRAP_MODE ;
 scalar_t__ EVP_CIPH_XTS_MODE ;
 int cipher_test_enc (TYPE_1__*,int,size_t,size_t,int) ;

__attribute__((used)) static int cipher_test_run(EVP_TEST *t)
{
    CIPHER_DATA *cdat = t->data;
    int rv, frag = 0;
    size_t out_misalign, inp_misalign;

    if (!cdat->key) {
        t->err = "NO_KEY";
        return 0;
    }
    if (!cdat->iv && EVP_CIPHER_iv_length(cdat->cipher)) {

        if (EVP_CIPHER_mode(cdat->cipher) != EVP_CIPH_WRAP_MODE) {
            t->err = "NO_IV";
            return 0;
        }
    }
    if (cdat->aead && !cdat->tag) {
        t->err = "NO_TAG";
        return 0;
    }
    for (out_misalign = 0; out_misalign <= 1;) {
        static char aux_err[64];
        t->aux_err = aux_err;
        for (inp_misalign = (size_t)-1; inp_misalign != 2; inp_misalign++) {
            if (inp_misalign == (size_t)-1) {

                BIO_snprintf(aux_err, sizeof(aux_err),
                             "%s in-place, %sfragmented",
                             out_misalign ? "misaligned" : "aligned",
                             frag ? "" : "not ");
            } else {
                BIO_snprintf(aux_err, sizeof(aux_err),
                             "%s output and %s input, %sfragmented",
                             out_misalign ? "misaligned" : "aligned",
                             inp_misalign ? "misaligned" : "aligned",
                             frag ? "" : "not ");
            }
            if (cdat->enc) {
                rv = cipher_test_enc(t, 1, out_misalign, inp_misalign, frag);

                if (rv != 1) {
                    if (rv < 0)
                        return 0;
                    return 1;
                }
            }
            if (cdat->enc != 1) {
                rv = cipher_test_enc(t, 0, out_misalign, inp_misalign, frag);

                if (rv != 1) {
                    if (rv < 0)
                        return 0;
                    return 1;
                }
            }
        }

        if (out_misalign == 1 && frag == 0) {




            if (cdat->aead == EVP_CIPH_CCM_MODE
                    || EVP_CIPHER_mode(cdat->cipher) == EVP_CIPH_SIV_MODE
                    || EVP_CIPHER_mode(cdat->cipher) == EVP_CIPH_XTS_MODE
                    || EVP_CIPHER_mode(cdat->cipher) == EVP_CIPH_WRAP_MODE)
                break;
            out_misalign = 0;
            frag++;
        } else {
            out_misalign++;
        }
    }
    t->aux_err = ((void*)0);

    return 1;
}
