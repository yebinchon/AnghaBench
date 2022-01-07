
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FAIL_IF (int) ;
 int MAP_ANONYMOUS ;
 char* MAP_FAILED ;
 int MAP_PRIVATE ;
 int PPC_FEATURE_ARCH_2_06 ;
 int PROT_READ ;
 int PROT_SAO ;
 int PROT_WRITE ;
 int SIZE ;
 int SKIP_IF (int) ;
 int have_hwcap (int ) ;
 int memset (char*,int,int ) ;
 char* mmap (int *,int ,int,int,int,int ) ;

int test_prot_sao(void)
{
 char *p;


 SKIP_IF(!have_hwcap(PPC_FEATURE_ARCH_2_06));






 p = mmap(((void*)0), SIZE, PROT_READ | PROT_WRITE | PROT_SAO,
   MAP_ANONYMOUS | MAP_PRIVATE, -1, 0);
 FAIL_IF(p == MAP_FAILED);


 memset(p, 0xaa, SIZE);

 return 0;
}
