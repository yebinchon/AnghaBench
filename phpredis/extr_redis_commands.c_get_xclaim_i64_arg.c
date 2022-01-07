
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef scalar_t__ int64_t ;


 int E_WARNING ;
 scalar_t__ FAILURE ;
 int php_error_docref (int *,int ,char*,char const*) ;
 scalar_t__ zval_get_i64 (int *,scalar_t__*) ;

__attribute__((used)) static int64_t get_xclaim_i64_arg(const char *key, zval *zv) {
    int64_t retval = -1;


    if (zval_get_i64(zv, &retval) == FAILURE || retval < 0) {
        php_error_docref(((void*)0), E_WARNING,
            "Invalid XCLAIM option '%s' will be ignored", key);
    }

    return retval;
}
