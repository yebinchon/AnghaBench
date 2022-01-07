
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
struct env_set {int dummy; } ;
struct buffer {int dummy; } ;
typedef int b ;


 int BSTR (struct buffer*) ;
 int M_WARN ;
 scalar_t__ buf_printf (struct buffer*,char*,char const*) ;
 int buf_set_write (struct buffer*,int *,int) ;
 int msg (int ,char*) ;
 int setenv_str (struct env_set*,int ,char const*) ;

void
setenv_str_safe(struct env_set *es, const char *name, const char *value)
{
    uint8_t b[64];
    struct buffer buf;
    buf_set_write(&buf, b, sizeof(b));
    if (buf_printf(&buf, "OPENVPN_%s", name))
    {
        setenv_str(es, BSTR(&buf), value);
    }
    else
    {
        msg(M_WARN, "setenv_str_safe: name overflow");
    }
}
