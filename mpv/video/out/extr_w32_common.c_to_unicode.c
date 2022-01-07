
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int UINT ;
typedef int BYTE ;


 scalar_t__ IS_SURROGATE_PAIR (int,int) ;
 int MP_ARRAY_SIZE (int*) ;
 int ToUnicode (int ,int ,int const*,int*,int ,int ) ;
 int clear_keyboard_buffer () ;
 int decode_surrogate_pair (int,int) ;

__attribute__((used)) static int to_unicode(UINT vkey, UINT scancode, const BYTE keys[256])
{




    wchar_t buf[10] = { 0 };


    clear_keyboard_buffer();

    int len = ToUnicode(vkey, scancode, keys, buf, MP_ARRAY_SIZE(buf), 0);




    if (len < 0)
        len = -len;
    if (len >= 2 && IS_SURROGATE_PAIR(buf[len - 2], buf[len - 1]))
        return decode_surrogate_pair(buf[len - 2], buf[len - 1]);
    if (len >= 1)
        return buf[len - 1];

    return 0;
}
