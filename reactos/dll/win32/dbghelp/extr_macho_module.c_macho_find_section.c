
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct image_section_map {int dummy; } ;
struct image_file_map {int dummy; } ;
typedef int BOOL ;


 int FALSE ;

BOOL macho_find_section(struct image_file_map* ifm, const char* segname, const char* sectname, struct image_section_map* ism)
{
    return FALSE;
}
