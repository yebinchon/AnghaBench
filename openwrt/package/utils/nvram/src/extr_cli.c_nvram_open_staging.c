
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int nvram_handle_t ;


 int NVRAM_RW ;
 int NVRAM_STAGING ;
 int * nvram_find_staging () ;
 int * nvram_open (int ,int ) ;
 scalar_t__ nvram_to_staging () ;

__attribute__((used)) static nvram_handle_t * nvram_open_staging(void)
{
 if( nvram_find_staging() != ((void*)0) || nvram_to_staging() == 0 )
  return nvram_open(NVRAM_STAGING, NVRAM_RW);

 return ((void*)0);
}
