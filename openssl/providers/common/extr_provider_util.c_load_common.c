
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {scalar_t__ data_type; char* data; } ;
typedef TYPE_1__ OSSL_PARAM ;
typedef int ENGINE ;


 int * ENGINE_by_id (char*) ;
 int ENGINE_finish (int *) ;
 char* OSSL_ALG_PARAM_PROPERTIES ;
 scalar_t__ OSSL_PARAM_UTF8_STRING ;
 TYPE_1__* OSSL_PARAM_locate_const (TYPE_1__ const*,char*) ;

__attribute__((used)) static int load_common(const OSSL_PARAM params[], const char **propquery,
                       ENGINE **engine)
{
    const OSSL_PARAM *p;

    *propquery = ((void*)0);
    p = OSSL_PARAM_locate_const(params, OSSL_ALG_PARAM_PROPERTIES);
    if (p != ((void*)0)) {
        if (p->data_type != OSSL_PARAM_UTF8_STRING)
            return 0;
        *propquery = p->data;
    }

    *engine = ((void*)0);



    p = OSSL_PARAM_locate_const(params, "engine");
    if (p != ((void*)0)) {
        if (p->data_type != OSSL_PARAM_UTF8_STRING)
            return 0;
        ENGINE_finish(*engine);
        *engine = ENGINE_by_id(p->data);
        if (*engine == ((void*)0))
            return 0;
    }

    return 1;
}
