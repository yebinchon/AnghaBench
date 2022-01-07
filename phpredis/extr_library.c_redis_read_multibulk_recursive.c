
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int zval ;
typedef int RedisSock ;
typedef int REDIS_REPLY_TYPE ;


 int FAILURE ;





 int add_next_index_long (int *,long) ;
 int add_next_index_zval (int *,int *) ;
 int array_init (int *) ;
 int redis_exception_ce ;
 scalar_t__ redis_read_reply_type (int *,int*,long*) ;
 int redis_read_variant_bulk (int *,long,int *) ;
 int redis_read_variant_line (int *,int,int,int *) ;
 int zend_throw_exception_ex (int ,int ,char*) ;

int
redis_read_multibulk_recursive(RedisSock *redis_sock, int elements, int status_strings,
                               zval *z_ret)
{
    long reply_info;
    REDIS_REPLY_TYPE reply_type;
    zval z_subelem;


    while(elements > 0) {

        if(redis_read_reply_type(redis_sock, &reply_type, &reply_info
                                ) < 0)
        {
            zend_throw_exception_ex(redis_exception_ce, 0,
                "protocol error, couldn't parse MULTI-BULK response\n");
            return FAILURE;
        }


        switch(reply_type) {
            case 131:
            case 129:
                redis_read_variant_line(redis_sock, reply_type, status_strings,
                                        &z_subelem);
                add_next_index_zval(z_ret, &z_subelem);
                break;
            case 130:

                add_next_index_long(z_ret, reply_info);
                break;
            case 132:

                redis_read_variant_bulk(redis_sock, reply_info, &z_subelem);
                add_next_index_zval(z_ret, &z_subelem);
                break;
            case 128:

                array_init(&z_subelem);
                add_next_index_zval(z_ret, &z_subelem);
                redis_read_multibulk_recursive(redis_sock, reply_info, status_strings,
                                               &z_subelem);
                break;
            default:

                break;
        }


        elements--;
    }

    return 0;
}
