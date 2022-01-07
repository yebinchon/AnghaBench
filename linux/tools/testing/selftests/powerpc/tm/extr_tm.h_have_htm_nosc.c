
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PPC_FEATURE2_HTM_NOSC ;
 int have_hwcap2 (int ) ;
 int printf (char*) ;

__attribute__((used)) static inline bool have_htm_nosc(void)
{



 printf("PPC_FEATURE2_HTM_NOSC not defined, can't check AT_HWCAP2\n");
 return 0;

}
