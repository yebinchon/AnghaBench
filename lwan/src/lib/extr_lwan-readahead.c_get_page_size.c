
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _SC_PAGESIZE ;
 long page_size ;
 long sysconf (int ) ;

__attribute__((used)) __attribute__((constructor)) static void get_page_size(void)
{
    long ps = sysconf(_SC_PAGESIZE);

    if (ps >= 0)
        page_size = ps;
}
