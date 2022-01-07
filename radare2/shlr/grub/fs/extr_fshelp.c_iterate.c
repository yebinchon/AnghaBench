
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct find_file_closure {int* type; int * currnode; int * oldnode; int name; } ;
typedef int grub_fshelp_node_t ;
typedef enum grub_fshelp_filetype { ____Placeholder_grub_fshelp_filetype } grub_fshelp_filetype ;


 int GRUB_FSHELP_CASE_INSENSITIVE ;
 int GRUB_FSHELP_UNKNOWN ;
 int GRUB_LONG_MAX ;
 int grub_free (int ) ;
 scalar_t__ grub_strcmp (int ,char const*) ;
 scalar_t__ grub_strncasecmp (int ,char const*,int ) ;

__attribute__((used)) static int
iterate (const char *filename,
  enum grub_fshelp_filetype filetype,
  grub_fshelp_node_t node,
  void *closure)
{
  struct find_file_closure *c = closure;

  if (filetype == GRUB_FSHELP_UNKNOWN ||
      (grub_strcmp (c->name, filename) &&
       (! (filetype & GRUB_FSHELP_CASE_INSENSITIVE) ||
 grub_strncasecmp (c->name, filename, GRUB_LONG_MAX))))
    {
      grub_free (node);
      return 0;
    }


  *(c->type) = filetype & ~GRUB_FSHELP_CASE_INSENSITIVE;
  *(c->oldnode) = *(c->currnode);
  *(c->currnode) = node;

  return 1;
}
