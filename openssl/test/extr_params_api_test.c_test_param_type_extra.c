
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint64_t ;
typedef int uint32_t ;
typedef int s ;
typedef size_t int64_t ;
typedef size_t int32_t ;
typedef int i64 ;
typedef int i32 ;
struct TYPE_10__ {int data_size; scalar_t__ data_type; } ;
typedef TYPE_1__ OSSL_PARAM ;


 int MAX_LEN ;
 scalar_t__ OSSL_PARAM_INTEGER ;
 int OSSL_PARAM_get_int32 (TYPE_1__*,size_t*) ;
 int OSSL_PARAM_get_int64 (TYPE_1__*,size_t*) ;
 int OSSL_PARAM_get_size_t (TYPE_1__*,size_t*) ;
 int OSSL_PARAM_get_uint32 (TYPE_1__*,int *) ;
 int OSSL_PARAM_get_uint64 (TYPE_1__*,int *) ;
 int OSSL_PARAM_set_int32 (TYPE_1__*,int) ;
 int OSSL_PARAM_set_uint32 (TYPE_1__*,int) ;
 int TEST_mem_eq (unsigned char*,size_t,unsigned char const*,size_t) ;
 int TEST_size_t_eq (size_t,int) ;
 int TEST_true (int ) ;
 int le_copy (unsigned char*,size_t*,int) ;

__attribute__((used)) static int test_param_type_extra(OSSL_PARAM *param, const unsigned char *cmp,
                                 size_t width)
{
    int32_t i32;
    int64_t i64;
    size_t s, sz;
    unsigned char buf[MAX_LEN];
    const int bit32 = param->data_size == sizeof(int32_t);
    const int sizet = bit32 && sizeof(size_t) > sizeof(int32_t);
    const int signd = param->data_type == OSSL_PARAM_INTEGER;

    if (signd) {
        if ((bit32 && !TEST_true(OSSL_PARAM_get_int32(param, &i32)))
            || !TEST_true(OSSL_PARAM_get_int64(param, &i64)))
            return 0;
    } else {
        if ((bit32
             && !TEST_true(OSSL_PARAM_get_uint32(param, (uint32_t *)&i32)))
            || !TEST_true(OSSL_PARAM_get_uint64(param, (uint64_t *)&i64))
            || (sizet && !TEST_true(OSSL_PARAM_get_size_t(param, &s))))
            return 0;
    }


    if (bit32) {
        le_copy(buf, &i32, sizeof(i32));
        sz = sizeof(i32) < width ? sizeof(i32) : width;
        if (!TEST_mem_eq(buf, sz, cmp, sz))
            return 0;
    }
    le_copy(buf, &i64, sizeof(i64));
        sz = sizeof(i64) < width ? sizeof(i64) : width;
    if (!TEST_mem_eq(buf, sz, cmp, sz))
        return 0;
    if (sizet && !signd) {
        le_copy(buf, &s, sizeof(s));
        sz = sizeof(s) < width ? sizeof(s) : width;
        if (!TEST_mem_eq(buf, sz, cmp, sz))
            return 0;
    }


    if (sizeof(size_t) > width) {
        if (signd) {
            if (!TEST_true(OSSL_PARAM_set_int32(param, 12345))
                || !TEST_true(OSSL_PARAM_get_int64(param, &i64))
                || !TEST_size_t_eq((size_t)i64, 12345))
                return 0;
        } else {
            if (!TEST_true(OSSL_PARAM_set_uint32(param, 12345))
                || !TEST_true(OSSL_PARAM_get_uint64(param, (uint64_t *)&i64))
                || !TEST_size_t_eq((size_t)i64, 12345))
                return 0;
        }
    }
    return 1;
}
