
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int libkdump_config_t ;


 int auto_config () ;
 int config ;

libkdump_config_t libkdump_get_autoconfig() {
  auto_config();
  return config;
}
