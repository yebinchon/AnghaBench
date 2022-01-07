
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int bfd_size_type ;
struct TYPE_4__ {int name; struct TYPE_4__* next; } ;
typedef TYPE_1__ asection ;


 scalar_t__ bfd_get_section_contents (void*,TYPE_1__*,unsigned char*,int ,int ) ;
 int bfd_get_section_size (TYPE_1__*) ;
 int create_map (unsigned char*,int ) ;
 int destroy_map () ;
 int free (unsigned char*) ;
 int strcmp (int ,char*) ;
 int strncmp (int ,char*,int) ;
 unsigned char* xmalloc (int ) ;

void
build_ARC_extmap (void *text_bfd)
{
}
