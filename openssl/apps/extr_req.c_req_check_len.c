
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int BIO_printf (int ,char*,int) ;
 int bio_err ;

__attribute__((used)) static int req_check_len(int len, int n_min, int n_max)
{
    if ((n_min > 0) && (len < n_min)) {
        BIO_printf(bio_err,
                   "string is too short, it needs to be at least %d bytes long\n",
                   n_min);
        return 0;
    }
    if ((n_max >= 0) && (len > n_max)) {
        BIO_printf(bio_err,
                   "string is too long, it needs to be no more than %d bytes long\n",
                   n_max);
        return 0;
    }
    return 1;
}
