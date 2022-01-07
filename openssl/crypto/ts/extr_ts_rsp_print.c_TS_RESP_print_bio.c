
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * tst_info; int status_info; } ;
typedef TYPE_1__ TS_RESP ;
typedef int BIO ;


 int BIO_printf (int *,char*) ;
 int TS_STATUS_INFO_print_bio (int *,int ) ;
 int TS_TST_INFO_print_bio (int *,int *) ;

int TS_RESP_print_bio(BIO *bio, TS_RESP *a)
{
    BIO_printf(bio, "Status info:\n");
    TS_STATUS_INFO_print_bio(bio, a->status_info);

    BIO_printf(bio, "\nTST info:\n");
    if (a->tst_info != ((void*)0))
        TS_TST_INFO_print_bio(bio, a->tst_info);
    else
        BIO_printf(bio, "Not included.\n");

    return 1;
}
