
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {unsigned char* buf; unsigned char* buf2; unsigned int siglen; int ** ecdsa; } ;
typedef TYPE_1__ loopargs_t ;
typedef int EC_KEY ;


 int BIO_printf (int ,char*) ;
 scalar_t__ COND (int ) ;
 int ECDSA_verify (int ,unsigned char*,int,unsigned char*,unsigned int,int *) ;
 int ERR_print_errors (int ) ;
 int bio_err ;
 int ** ecdsa_c ;
 size_t testnum ;

__attribute__((used)) static int ECDSA_verify_loop(void *args)
{
    loopargs_t *tempargs = *(loopargs_t **) args;
    unsigned char *buf = tempargs->buf;
    EC_KEY **ecdsa = tempargs->ecdsa;
    unsigned char *ecdsasig = tempargs->buf2;
    unsigned int ecdsasiglen = tempargs->siglen;
    int ret, count;
    for (count = 0; COND(ecdsa_c[testnum][1]); count++) {
        ret = ECDSA_verify(0, buf, 20, ecdsasig, ecdsasiglen, ecdsa[testnum]);
        if (ret != 1) {
            BIO_printf(bio_err, "ECDSA verify failure\n");
            ERR_print_errors(bio_err);
            count = -1;
            break;
        }
    }
    return count;
}
