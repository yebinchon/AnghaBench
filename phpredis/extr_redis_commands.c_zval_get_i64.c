
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef scalar_t__ zend_long ;
typedef scalar_t__ int64_t ;


 int FAILURE ;


 scalar_t__ IS_STRING ;
 int SUCCESS ;
 scalar_t__ Z_DVAL_P (int *) ;
 scalar_t__ Z_LVAL_P (int *) ;
 int Z_STRLEN_P (int *) ;
 int Z_STRVAL_P (int *) ;
 scalar_t__ Z_TYPE_P (int *) ;
 int is_numeric_string (int ,int ,scalar_t__*,double*,int) ;

__attribute__((used)) static int zval_get_i64(zval *zv, int64_t *retval) {
    if (Z_TYPE_P(zv) == 128) {
        *retval = (int64_t)Z_LVAL_P(zv);
        return SUCCESS;
    } else if (Z_TYPE_P(zv) == 129) {
        *retval = (int64_t)Z_DVAL_P(zv);
        return SUCCESS;
    } else if (Z_TYPE_P(zv) == IS_STRING) {
        zend_long lval;
        double dval;

        switch (is_numeric_string(Z_STRVAL_P(zv), Z_STRLEN_P(zv), &lval, &dval, 1)) {
            case 128:
                *retval = (int64_t)lval;
                return SUCCESS;
            case 129:
                *retval = (int64_t)dval;
                return SUCCESS;
        }
    }


    return FAILURE;
}
