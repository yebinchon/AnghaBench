
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int bstr ;


 int bstr_cut (int ,int) ;
 int bstr_splice (int ,int ,int) ;
 int bstrchr (int ,unsigned char) ;

__attribute__((used)) static int split_char(bstr str, unsigned char split, int max, bstr *out_arr)
{
    if (max < 1)
        return 0;

    int count = 0;
    while (1) {
        int next = bstrchr(str, split);
        if (next >= 0 && max - count > 1) {
            out_arr[count++] = bstr_splice(str, 0, next);
            str = bstr_cut(str, next + 1);
        } else {
            out_arr[count++] = str;
            break;
        }
    }
    return count;
}
