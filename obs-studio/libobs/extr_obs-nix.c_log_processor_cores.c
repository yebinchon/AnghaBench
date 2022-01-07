
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int LOG_INFO ;
 int blog (int ,char*,int ,int ) ;
 int os_get_logical_cores () ;
 int os_get_physical_cores () ;

__attribute__((used)) static void log_processor_cores(void)
{
 blog(LOG_INFO, "Physical Cores: %d, Logical Cores: %d",
      os_get_physical_cores(), os_get_logical_cores());
}
