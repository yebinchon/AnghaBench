
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct object_st {int p1; double p2; char* p4; char* p5; char* p6; int p3; } ;
struct TYPE_3__ {int return_size; scalar_t__ data; int * key; int data_size; } ;
typedef TYPE_1__ OSSL_PARAM ;


 int BN_bn2nativepad (int ,scalar_t__,size_t) ;
 size_t BN_num_bytes (int ) ;
 int TEST_size_t_ge (int ,size_t) ;
 scalar_t__ strcmp (int *,char*) ;
 int strcpy (scalar_t__,char*) ;
 int strlen (char*) ;

__attribute__((used)) static int raw_get_params(void *vobj, OSSL_PARAM *params)
{
    struct object_st *obj = vobj;

    for (; params->key != ((void*)0); params++)
        if (strcmp(params->key, "p1") == 0) {
            params->return_size = sizeof(obj->p1);
            *(int *)params->data = obj->p1;
        } else if (strcmp(params->key, "p2") == 0) {
            params->return_size = sizeof(obj->p2);
            *(double *)params->data = obj->p2;
        } else if (strcmp(params->key, "p3") == 0) {
            size_t bytes = BN_num_bytes(obj->p3);

            params->return_size = bytes;
            if (!TEST_size_t_ge(params->data_size, bytes))
                return 0;
            BN_bn2nativepad(obj->p3, params->data, bytes);
        } else if (strcmp(params->key, "p4") == 0) {
            size_t bytes = strlen(obj->p4) + 1;

            params->return_size = bytes;
            if (!TEST_size_t_ge(params->data_size, bytes))
                return 0;
            strcpy(params->data, obj->p4);
        } else if (strcmp(params->key, "p5") == 0) {
            size_t bytes = strlen(obj->p5) + 1;

            params->return_size = bytes;
            if (!TEST_size_t_ge(params->data_size, bytes))
                return 0;
            strcpy(params->data, obj->p5);
        } else if (strcmp(params->key, "p6") == 0) {






            size_t bytes = strlen(obj->p6) + 1;

            params->return_size = bytes;
            *(const char **)params->data = obj->p6;
        }

    return 1;
}
