
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef void* uint32_t ;
struct TYPE_6__ {void* resize; void* present1; void* present; } ;
struct TYPE_5__ {void* is_d3d9ex_clsoff; void* d3d9_clsoff; void* present_swap; void* present_ex; void* present; } ;
struct TYPE_4__ {void* present; } ;
struct graphics_offsets {TYPE_3__ dxgi; TYPE_2__ d3d9; TYPE_1__ d3d8; } ;
typedef int config_t ;


 scalar_t__ CONFIG_SUCCESS ;
 int config_close (int *) ;
 scalar_t__ config_get_uint (int *,char*,char*) ;
 scalar_t__ config_open_string (int **,char const*) ;

__attribute__((used)) static inline bool load_offsets_from_string(struct graphics_offsets *offsets,
         const char *str)
{
 config_t *config;

 if (config_open_string(&config, str) != CONFIG_SUCCESS) {
  return 0;
 }

 offsets->d3d8.present =
  (uint32_t)config_get_uint(config, "d3d8", "present");

 offsets->d3d9.present =
  (uint32_t)config_get_uint(config, "d3d9", "present");
 offsets->d3d9.present_ex =
  (uint32_t)config_get_uint(config, "d3d9", "present_ex");
 offsets->d3d9.present_swap =
  (uint32_t)config_get_uint(config, "d3d9", "present_swap");
 offsets->d3d9.d3d9_clsoff =
  (uint32_t)config_get_uint(config, "d3d9", "d3d9_clsoff");
 offsets->d3d9.is_d3d9ex_clsoff =
  (uint32_t)config_get_uint(config, "d3d9", "is_d3d9ex_clsoff");

 offsets->dxgi.present =
  (uint32_t)config_get_uint(config, "dxgi", "present");
 offsets->dxgi.present1 =
  (uint32_t)config_get_uint(config, "dxgi", "present1");
 offsets->dxgi.resize =
  (uint32_t)config_get_uint(config, "dxgi", "resize");

 config_close(config);
 return 1;
}
