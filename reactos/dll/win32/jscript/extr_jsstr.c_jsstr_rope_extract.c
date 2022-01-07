
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int right; int left; } ;
typedef TYPE_1__ jsstr_rope_t ;
typedef int WCHAR ;


 int jsstr_extract (int ,unsigned int,unsigned int,int *) ;
 unsigned int jsstr_length (int ) ;

__attribute__((used)) static void jsstr_rope_extract(jsstr_rope_t *str, unsigned off, unsigned len, WCHAR *buf)
{
    unsigned left_len = jsstr_length(str->left);

    if(left_len <= off) {
        jsstr_extract(str->right, off-left_len, len, buf);
    }else if(left_len >= len+off) {
        jsstr_extract(str->left, off, len, buf);
    }else {
        left_len -= off;
        jsstr_extract(str->left, off, left_len, buf);
        jsstr_extract(str->right, 0, len-left_len, buf+left_len);
    }
}
