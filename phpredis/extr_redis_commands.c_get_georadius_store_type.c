
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zend_string ;
typedef int geoStoreType ;


 int STORE_COORD ;
 int STORE_DIST ;
 int STORE_NONE ;
 int ZSTR_LEN (int *) ;
 int ZSTR_VAL (int *) ;
 int strcasecmp (int ,char*) ;

geoStoreType get_georadius_store_type(zend_string *key) {
    if (ZSTR_LEN(key) == 5 && !strcasecmp(ZSTR_VAL(key), "store")) {
        return STORE_COORD;
    } else if (ZSTR_LEN(key) == 9 && !strcasecmp(ZSTR_VAL(key), "storedist")) {
        return STORE_DIST;
    }

    return STORE_NONE;
}
