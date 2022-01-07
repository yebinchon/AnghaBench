
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int str; } ;
typedef TYPE_1__ jsstr_rope_t ;
typedef int WCHAR ;


 int TMP_BUF_SIZE ;
 unsigned int jsstr_length (int *) ;
 int jsstr_rope_extract (TYPE_1__*,unsigned int,unsigned int,int *) ;
 int memcmp (int *,int *,unsigned int) ;
 unsigned int min (unsigned int,unsigned int) ;

__attribute__((used)) static int ropes_cmp(jsstr_rope_t *left, jsstr_rope_t *right)
{
    WCHAR left_buf[TMP_BUF_SIZE], right_buf[TMP_BUF_SIZE];
    unsigned left_len = jsstr_length(&left->str);
    unsigned right_len = jsstr_length(&right->str);
    unsigned cmp_off = 0, cmp_size;
    int ret;


    while(cmp_off < min(left_len, right_len)) {
        cmp_size = min(left_len, right_len) - cmp_off;
        if(cmp_size > TMP_BUF_SIZE)
            cmp_size = TMP_BUF_SIZE;

        jsstr_rope_extract(left, cmp_off, cmp_size, left_buf);
        jsstr_rope_extract(right, cmp_off, cmp_size, right_buf);
        ret = memcmp(left_buf, right_buf, cmp_size);
        if(ret)
            return ret;

        cmp_off += cmp_size;
    }

    return left_len - right_len;
}
