
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int tcc_error (char*,char const*) ;

void expect(const char *msg)
{
 tcc_error ("%s expected", msg);
}
