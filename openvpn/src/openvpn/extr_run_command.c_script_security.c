
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int script_security_level ;

int
script_security(void)
{
    return script_security_level;
}
