
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct font_path_info {int path; int face_and_style; int sizes; } ;


 int bfree (int ) ;

__attribute__((used)) static inline void font_path_info_free(struct font_path_info *info)
{
 bfree(info->sizes);
 bfree(info->face_and_style);
 bfree(info->path);
}
