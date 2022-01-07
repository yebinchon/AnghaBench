
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ action; int path; } ;
typedef TYPE_1__ file_entry_t ;


 scalar_t__ FILE_ACTION_REMOVE ;
 int strcmp (int ,int ) ;

__attribute__((used)) static int
final_filemap_cmp(const void *a, const void *b)
{
 file_entry_t *fa = *((file_entry_t **) a);
 file_entry_t *fb = *((file_entry_t **) b);

 if (fa->action > fb->action)
  return 1;
 if (fa->action < fb->action)
  return -1;

 if (fa->action == FILE_ACTION_REMOVE)
  return strcmp(fb->path, fa->path);
 else
  return strcmp(fa->path, fb->path);
}
