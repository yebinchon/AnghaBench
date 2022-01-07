
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int _SC_PAGESIZE ;
 long sysconf (int ) ;

__attribute__((used)) static long _find_pagesize(void) {




    return 4096;

}
