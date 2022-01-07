
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int allowComments; int checkUTF8; } ;
typedef TYPE_1__ yajl_parser_config ;
typedef int yajl_handle ;
typedef int uint8_t ;
struct TYPE_5__ {int objectLevel; int arrayLevel; } ;
typedef TYPE_2__ context ;


 int callbacks ;
 int yajl_alloc (int *,TYPE_1__*,int *,void*) ;
 int yajl_free (int ) ;
 int yajl_parse (int ,int const*,size_t) ;

int LLVMFuzzerTestOneInput(const uint8_t* data, size_t size) {
    context ctx = {
        .arrayLevel = 0,
        .objectLevel = 0,
    };
    yajl_parser_config cfg = {
        .allowComments = 1,
        .checkUTF8 = 1,
    };
    yajl_handle parser = yajl_alloc(&callbacks, &cfg, ((void*)0), (void*)&ctx);

    (void)yajl_parse(parser, data, size);
    yajl_free(parser);

    return 0;
}
