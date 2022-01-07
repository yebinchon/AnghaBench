
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BIO ;


 int ERR_print_errors_cb (int ,int *) ;
 int print_bio ;

void ERR_print_errors(BIO *bp)
{
    ERR_print_errors_cb(print_bio, bp);
}
