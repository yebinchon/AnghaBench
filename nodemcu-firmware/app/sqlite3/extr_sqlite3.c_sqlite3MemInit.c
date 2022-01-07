
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cpuCount ;


 int SQLITE_OK ;
 int UNUSED_PARAMETER (void*) ;
 scalar_t__ _sqliteZone_ ;
 scalar_t__ malloc_create_zone (int,int ) ;
 scalar_t__ malloc_default_zone () ;
 int malloc_set_zone_name (scalar_t__,char*) ;
 int sysctlbyname (char*,int*,size_t*,int *,int ) ;

__attribute__((used)) static int sqlite3MemInit(void *NotUsed){
  UNUSED_PARAMETER(NotUsed);
  return SQLITE_OK;
}
