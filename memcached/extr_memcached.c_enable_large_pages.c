
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
struct memcntl_mha {size_t mha_pagesize; int mha_cmd; scalar_t__ mha_flags; int member_0; } ;
typedef int spages ;
typedef int caddr_t ;


 int MC_HAT_ADVISE ;
 int MHA_MAPSIZE_BSSBRK ;
 int S_IFREG ;
 int errno ;
 int fprintf (int ,char*,...) ;
 int getpagesizes (size_t*,int) ;
 int memcntl (int ,int ,int ,int ,int ,int ) ;
 int stat (char*,struct stat*) ;
 int stderr ;
 char* strerror (int ) ;
 scalar_t__ sysctlbyname (char*,int*,size_t*,int *,int ) ;

__attribute__((used)) static int enable_large_pages(void) {
    return -1;

}
