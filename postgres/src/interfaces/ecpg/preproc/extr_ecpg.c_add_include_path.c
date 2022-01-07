
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct _include_path {char* path; struct _include_path* next; } ;


 struct _include_path* include_paths ;
 struct _include_path* mm_alloc (int) ;

__attribute__((used)) static void
add_include_path(char *path)
{
 struct _include_path *ip = include_paths,
      *new;

 new = mm_alloc(sizeof(struct _include_path));
 new->path = path;
 new->next = ((void*)0);

 if (ip == ((void*)0))
  include_paths = new;
 else
 {
  for (; ip->next != ((void*)0); ip = ip->next);
  ip->next = new;
 }
}
