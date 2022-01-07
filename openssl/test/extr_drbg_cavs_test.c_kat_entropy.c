
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {size_t entropylen; scalar_t__ entropy; int entropycnt; } ;
typedef TYPE_1__ TEST_CTX ;
typedef int RAND_DRBG ;


 scalar_t__ RAND_DRBG_get_ex_data (int *,int ) ;
 int app_data_index ;

__attribute__((used)) static size_t kat_entropy(RAND_DRBG *drbg, unsigned char **pout,
                          int entropy, size_t min_len, size_t max_len,
                          int prediction_resistance)
{
    TEST_CTX *t = (TEST_CTX *)RAND_DRBG_get_ex_data(drbg, app_data_index);

    t->entropycnt++;
    *pout = (unsigned char *)t->entropy;
    return t->entropylen;
}
