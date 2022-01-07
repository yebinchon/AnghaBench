
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int buf ;







 double Z_DVAL_P (int *) ;
 double Z_LVAL_P (int *) ;
 int Z_STRLEN_P (int *) ;
 char* Z_STRVAL_P (int *) ;
 int Z_TYPE_P (int *) ;
 unsigned short cluster_hash_key (char const*,int) ;
 int snprintf (char*,int,char*,double) ;

unsigned short cluster_hash_key_zval(zval *z_key) {
    const char *kptr;
    char buf[255];
    int klen;


    switch(Z_TYPE_P(z_key)) {
        case 128:
            kptr = Z_STRVAL_P(z_key);
            klen = Z_STRLEN_P(z_key);
            break;
        case 130:
            klen = snprintf(buf,sizeof(buf),"%ld",Z_LVAL_P(z_key));
            kptr = (const char *)buf;
            break;
        case 131:
            klen = snprintf(buf,sizeof(buf),"%f",Z_DVAL_P(z_key));
            kptr = (const char *)buf;
            break;
        case 132:
            kptr = "Array";
            klen = sizeof("Array")-1;
            break;
        case 129:
            kptr = "Object";
            klen = sizeof("Object")-1;
            break;
        default:
            kptr = "";
            klen = 0;
    }


    return cluster_hash_key(kptr, klen);
}
