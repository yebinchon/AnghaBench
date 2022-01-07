
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int BN_ULONG ;


 int BN_MASK2 ;
 int BN_SQR_RECURSIVE_SIZE_NORMAL ;
 scalar_t__ bn_add_words (int*,int*,int*,int) ;
 int bn_cmp_words (int const*,int const*,int) ;
 int bn_sqr_comba4 (int*,int const*) ;
 int bn_sqr_comba8 (int*,int const*) ;
 int bn_sqr_normal (int*,int const*,int,int*) ;
 scalar_t__ bn_sub_words (int*,int const*,int const*,int) ;
 int memset (int*,int ,int) ;

void bn_sqr_recursive(BN_ULONG *r, const BN_ULONG *a, int n2, BN_ULONG *t)
{
    int n = n2 / 2;
    int zero, c1;
    BN_ULONG ln, lo, *p;

    if (n2 == 4) {

        bn_sqr_normal(r, a, 4, t);



        return;
    } else if (n2 == 8) {

        bn_sqr_normal(r, a, 8, t);



        return;
    }
    if (n2 < BN_SQR_RECURSIVE_SIZE_NORMAL) {
        bn_sqr_normal(r, a, n2, t);
        return;
    }

    c1 = bn_cmp_words(a, &(a[n]), n);
    zero = 0;
    if (c1 > 0)
        bn_sub_words(t, a, &(a[n]), n);
    else if (c1 < 0)
        bn_sub_words(t, &(a[n]), a, n);
    else
        zero = 1;


    p = &(t[n2 * 2]);

    if (!zero)
        bn_sqr_recursive(&(t[n2]), t, n, p);
    else
        memset(&t[n2], 0, sizeof(*t) * n2);
    bn_sqr_recursive(r, a, n, p);
    bn_sqr_recursive(&(r[n2]), &(a[n]), n, p);







    c1 = (int)(bn_add_words(t, r, &(r[n2]), n2));


    c1 -= (int)(bn_sub_words(&(t[n2]), t, &(t[n2]), n2));







    c1 += (int)(bn_add_words(&(r[n]), &(r[n]), &(t[n2]), n2));
    if (c1) {
        p = &(r[n + n2]);
        lo = *p;
        ln = (lo + c1) & BN_MASK2;
        *p = ln;





        if (ln < (BN_ULONG)c1) {
            do {
                p++;
                lo = *p;
                ln = (lo + 1) & BN_MASK2;
                *p = ln;
            } while (ln == 0);
        }
    }
}
