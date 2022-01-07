
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* array; } ;
struct TYPE_6__ {TYPE_1__ file; } ;
typedef TYPE_2__ obs_script_t ;


 scalar_t__ ptr_valid (TYPE_2__ const*) ;

const char *obs_script_get_file(const obs_script_t *script)
{
 const char *file = ptr_valid(script) ? script->file.array : "";
 return file ? file : "";
}
