
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int zval ;
struct TYPE_2__ {scalar_t__ (* input_filter ) (int,char*,char**,int,size_t*) ;} ;


 int PARSE_ENV ;
 int PARSE_SERVER ;
 int * PG (int ) ;
 size_t TRACK_VARS_ENV ;
 scalar_t__ Z_ARR (int ) ;
 scalar_t__ Z_ARR_P (int *) ;
 int http_globals ;
 int php_register_variable_safe (char*,char*,size_t,int *) ;
 TYPE_1__ sapi_module ;
 scalar_t__ stub1 (int,char*,char**,int,size_t*) ;

__attribute__((used)) static int add_variable( const char * pKey, int keyLen, const char * pValue, int valLen,
                         void * arg )
{
    int filter_arg = (Z_ARR_P((zval *)arg) == Z_ARR(PG(http_globals)[TRACK_VARS_ENV]))
        ? PARSE_ENV : PARSE_SERVER;
    char * new_val = (char *) pValue;
    size_t new_val_len;

    if (sapi_module.input_filter(filter_arg, (char *)pKey, &new_val, valLen, &new_val_len)) {
        php_register_variable_safe((char *)pKey, new_val, new_val_len, (zval *)arg );
    }
    return 1;
}
