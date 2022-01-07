
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int MP_MAX_KEY_DOWN ;

__attribute__((used)) static void key_buf_add(int *buf, int code)
{
    for (int n = MP_MAX_KEY_DOWN - 1; n > 0; n--)
        buf[n] = buf[n - 1];
    buf[0] = code;
}
