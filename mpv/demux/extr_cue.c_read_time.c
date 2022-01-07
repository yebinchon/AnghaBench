
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bstr {int dummy; } ;


 double SECS_PER_CUE_FRAME ;
 scalar_t__ eat_char (struct bstr*,char) ;
 double read_int (struct bstr*,int) ;

__attribute__((used)) static double read_time(struct bstr *data)
{
    struct bstr s = *data;
    bool ok = 1;
    double t1 = read_int(&s, 0);
    ok = eat_char(&s, ':') && ok;
    double t2 = read_int(&s, 1);
    ok = eat_char(&s, ':') && ok;
    double t3 = read_int(&s, 1);
    ok = ok && t1 >= 0 && t2 >= 0 && t3 >= 0;
    return ok ? t1 * 60.0 + t2 + t3 * SECS_PER_CUE_FRAME : 0;
}
