
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int script_security_level ;

void
script_security_set(int level)
{
    script_security_level = level;
}
