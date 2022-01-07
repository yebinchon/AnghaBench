
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;


 int ZVAL_BOOL (int *,int ) ;
 int add_assoc_long (int *,char*,int ) ;
 int add_assoc_string (int *,char*,char*) ;
 int add_next_index_zval (int *,int *) ;
 int array_init (int *) ;
 int atol (char*) ;
 int efree (char*) ;
 char* estrndup (char*,int) ;
 int zval_dtor (int *) ;

void
redis_parse_client_list_response(char *response, zval *z_ret)
{
    char *p, *lpos, *kpos = ((void*)0), *vpos = ((void*)0), *p2, *key, *value;
    int klen = 0, done = 0, is_numeric;
    zval z_sub_result;


    array_init(z_ret);
    array_init(&z_sub_result);


    p = response;
    lpos = response;


    while(!done) {

        switch(*p) {

            case '\0':
                done = 1;
                break;

            case '\n':
            case ' ':

                vpos = lpos;



                if(kpos && vpos) {

                    key = estrndup(kpos, klen);


                    value = estrndup(lpos, p - lpos);


                    is_numeric = 1;
                    for(p2 = value; *p2; ++p2) {
                        if(*p2 < '0' || *p2 > '9') {
                            is_numeric = 0;
                            break;
                        }
                    }


                    if(is_numeric == 1) {
                        add_assoc_long(&z_sub_result, key, atol(value));
                    } else {
                        add_assoc_string(&z_sub_result, key, value);
                    }
                    efree(value);

                    if(*p == '\n') {

                        add_next_index_zval(z_ret, &z_sub_result);


                        if(*(p+1) != '\0') {
                            array_init(&z_sub_result);
                        }
                    }


                    efree(key);
                } else {

                    zval_dtor(z_ret);
                    ZVAL_BOOL(z_ret, 0);
                    return;
                }


                lpos = p + 1;

                break;

            case '=':

                kpos = lpos;
                klen = p - lpos;


                lpos = p + 1;

                break;
        }


        p++;
    }
}
