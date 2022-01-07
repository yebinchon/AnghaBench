
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* rn42_gets (int) ;
 int rn42_print_response () ;
 int rn42_send_str (char const*) ;
 int wait_ms (int) ;
 int xprintf (char*,char const*) ;

const char *rn42_send_command(const char *cmd)
{
    static const char *s;
    rn42_send_str(cmd);
    wait_ms(500);
    s = rn42_gets(100);
    xprintf("%s\r\n", s);
    rn42_print_response();
    return s;
}
