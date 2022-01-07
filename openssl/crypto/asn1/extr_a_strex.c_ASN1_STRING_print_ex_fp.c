
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;
typedef int ASN1_STRING ;


 int do_print_ex (int ,int *,unsigned long,int const*) ;
 int send_fp_chars ;

int ASN1_STRING_print_ex_fp(FILE *fp, const ASN1_STRING *str, unsigned long flags)
{
    return do_print_ex(send_fp_chars, fp, flags, str);
}
