
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct object_st {int p1; double p2; char const* p6; int p6_l; int p5; scalar_t__ p5_l; int p4; int p3; } ;
struct TYPE_3__ {int data_size; scalar_t__ data; int * key; } ;
typedef TYPE_1__ OSSL_PARAM ;


 int BN_free (int ) ;
 int BN_native2bn (scalar_t__,int ,int *) ;
 int OPENSSL_free (int ) ;
 int OPENSSL_strndup (scalar_t__,int ) ;
 int TEST_ptr (int ) ;
 scalar_t__ strcmp (int *,char*) ;
 scalar_t__ strlen (int ) ;
 int strncpy (int ,scalar_t__,int ) ;

__attribute__((used)) static int raw_set_params(void *vobj, const OSSL_PARAM *params)
{
    struct object_st *obj = vobj;

    for (; params->key != ((void*)0); params++)
        if (strcmp(params->key, "p1") == 0) {
            obj->p1 = *(int *)params->data;
        } else if (strcmp(params->key, "p2") == 0) {
            obj->p2 = *(double *)params->data;
        } else if (strcmp(params->key, "p3") == 0) {
            BN_free(obj->p3);
            if (!TEST_ptr(obj->p3 = BN_native2bn(params->data,
                                                 params->data_size, ((void*)0))))
                return 0;
        } else if (strcmp(params->key, "p4") == 0) {
            OPENSSL_free(obj->p4);
            if (!TEST_ptr(obj->p4 = OPENSSL_strndup(params->data,
                                                    params->data_size)))
                return 0;
        } else if (strcmp(params->key, "p5") == 0) {
            strncpy(obj->p5, params->data, params->data_size);
            obj->p5_l = strlen(obj->p5) + 1;
        } else if (strcmp(params->key, "p6") == 0) {
            obj->p6 = *(const char **)params->data;
            obj->p6_l = params->data_size;
        }

    return 1;
}
