
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int sz_ip ;


 int fflush (int ) ;
 int fprintf (int ,char*,char*,unsigned int) ;
 int global_debug_level ;
 int sprintf_s (char*,int,char*,unsigned int,unsigned int,unsigned int,unsigned int) ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static void
vLOGip(int level, unsigned ip, unsigned port, const char *fmt, va_list marker)
{
    if (level <= global_debug_level) {
        char sz_ip[16];

        sprintf_s(sz_ip, sizeof(sz_ip), "%u.%u.%u.%u",
            (ip>>24)&0xFF, (ip>>16)&0xFF, (ip>>8)&0xFF, (ip>>0)&0xFF);
        fprintf(stderr, "%-15s:%5u: ", sz_ip, port);
        vfprintf(stderr, fmt, marker);
        fflush(stderr);
    }
}
