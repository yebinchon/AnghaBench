
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nk_image {int dummy; } ;
struct file_group {int group; char const* name; struct nk_image* icon; } ;
typedef enum file_groups { ____Placeholder_file_groups } file_groups ;



__attribute__((used)) static struct file_group
FILE_GROUP(enum file_groups group, const char *name, struct nk_image *icon)
{
    struct file_group fg;
    fg.group = group;
    fg.name = name;
    fg.icon = icon;
    return fg;
}
