
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int json_t ;
typedef int FILE ;


 int dump_to_file ;
 int json_dump_callback (int const*,int ,void*,size_t) ;

int json_dumpf(const json_t *json, FILE *output, size_t flags)
{
    return json_dump_callback(json, dump_to_file, (void *)output, flags);
}
