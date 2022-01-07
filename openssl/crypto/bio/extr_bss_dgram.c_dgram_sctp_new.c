
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int pr_policy; } ;
struct TYPE_7__ {TYPE_1__ prinfo; } ;
typedef TYPE_2__ bio_dgram_sctp_data ;
struct TYPE_8__ {scalar_t__ flags; TYPE_2__* ptr; scalar_t__ num; scalar_t__ init; } ;
typedef TYPE_3__ BIO ;


 int BIO_F_DGRAM_SCTP_NEW ;
 int BIOerr (int ,int ) ;
 int ERR_R_MALLOC_FAILURE ;
 TYPE_2__* OPENSSL_zalloc (int) ;
 int SCTP_PR_SCTP_NONE ;

__attribute__((used)) static int dgram_sctp_new(BIO *bi)
{
    bio_dgram_sctp_data *data = ((void*)0);

    bi->init = 0;
    bi->num = 0;
    if ((data = OPENSSL_zalloc(sizeof(*data))) == ((void*)0)) {
        BIOerr(BIO_F_DGRAM_SCTP_NEW, ERR_R_MALLOC_FAILURE);
        return 0;
    }



    bi->ptr = data;

    bi->flags = 0;
    return 1;
}
