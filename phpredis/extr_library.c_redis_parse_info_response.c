
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef scalar_t__ zend_uchar ;
typedef int zend_long ;


 scalar_t__ IS_DOUBLE ;
 scalar_t__ IS_LONG ;
 int _NL ;
 int add_assoc_double_ex (int *,char*,int,double) ;
 int add_assoc_long_ex (int *,char*,int,int ) ;
 int add_assoc_stringl_ex (int *,char*,int,char*,int) ;
 int array_init (int *) ;
 scalar_t__ is_numeric_string (char*,int,int *,double*,int ) ;
 char* strchr (char*,char) ;
 char* strstr (char*,int ) ;

void
redis_parse_info_response(char *response, zval *z_ret)
{
    char *cur, *pos;

    array_init(z_ret);

    cur = response;
    while(1) {

        if (*cur == '#' || *cur == '\r') {
            if ((cur = strstr(cur, _NL)) == ((void*)0)) {
                break;
            }
            cur += 2;
            continue;
        }


        if ((pos = strchr(cur, ':')) == ((void*)0)) {
            break;
        }
        char *key = cur;
        int key_len = pos - cur;
        key[key_len] = '\0';


        cur = pos + 1;
        if ((pos = strstr(cur, _NL)) == ((void*)0)) {
            break;
        }
        char *value = cur;
        int value_len = pos - cur;
        value[value_len] = '\0';

        double dval;
        zend_long lval;
        zend_uchar type = is_numeric_string(value, value_len, &lval, &dval, 0);
        if (type == IS_LONG) {
            add_assoc_long_ex(z_ret, key, key_len, lval);
        } else if (type == IS_DOUBLE) {
            add_assoc_double_ex(z_ret, key, key_len, dval);
        } else {
            add_assoc_stringl_ex(z_ret, key, key_len, value, value_len);
        }

        cur = pos + 2;
    }
}
