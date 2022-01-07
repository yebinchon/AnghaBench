
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int verify_seama (char const*,int) ;

__attribute__((used)) static void dump_seama(const char * fname)
{
 verify_seama(fname, 1);
}
