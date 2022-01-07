
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct grub_fshelp_find_file_closure {int (* iterate_dir ) (int ,int ,struct find_file_closure*) ;int symlinknest; char* (* read_symlink ) (int ) ;int foundtype; int rootnode; int currroot; } ;
struct find_file_closure {char* name; int* type; int * currnode; int * oldnode; } ;
typedef int grub_fshelp_node_t ;
typedef scalar_t__ grub_err_t ;
typedef enum grub_fshelp_filetype { ____Placeholder_grub_fshelp_filetype } grub_fshelp_filetype ;


 int GRUB_ERR_BAD_FILE_TYPE ;
 int GRUB_ERR_FILE_NOT_FOUND ;
 int GRUB_ERR_SYMLINK_LOOP ;
 int GRUB_FSHELP_DIR ;
 int GRUB_FSHELP_SYMLINK ;
 int free_node (int ,struct grub_fshelp_find_file_closure*) ;
 scalar_t__ grub_errno ;
 scalar_t__ grub_error (int ,char*) ;
 int grub_free (char*) ;
 char* grub_malloc (scalar_t__) ;
 char* grub_strchr (char*,char) ;
 scalar_t__ grub_strlen (char const*) ;
 int grub_strncpy (char*,char const*,scalar_t__) ;
 int iterate ;
 int stub1 (int ,int ,struct find_file_closure*) ;
 char* stub2 (int ) ;

__attribute__((used)) static grub_err_t
find_file (const char *currpath, grub_fshelp_node_t currroot,
    grub_fshelp_node_t *currfound,
    struct grub_fshelp_find_file_closure *c)
{
 char *fpath = grub_malloc (grub_strlen (currpath) + 1);
  char *name = fpath;
  char *next;
  enum grub_fshelp_filetype type = GRUB_FSHELP_DIR;
  grub_fshelp_node_t currnode = currroot;
  grub_fshelp_node_t oldnode = currroot;

  c->currroot = currroot;

  grub_strncpy (fpath, currpath, grub_strlen (currpath) + 1);


  while (*name == '/')
    name++;

  if (! *name)
    {
      *currfound = currnode;
      grub_free (fpath);
      return 0;
    }

  for (;;)
    {
      int found;
      struct find_file_closure cc;


      next = grub_strchr (name, '/');
      if (next)
 {

   while (*next == '/')
     *(next++) = '\0';
 }



      if (type != GRUB_FSHELP_DIR)
 {
   free_node (currnode, c);
   grub_free (fpath);
   return grub_error (GRUB_ERR_BAD_FILE_TYPE, "not a directory");
 }

      cc.name = name;
      cc.type = &type;
      cc.oldnode = &oldnode;
      cc.currnode = &currnode;

      found = c->iterate_dir (currnode, iterate, &cc);
      if (! found)
 {
   if (grub_errno) {
     grub_free (fpath);
     return grub_errno;
}

   break;
 }


      if (type == GRUB_FSHELP_SYMLINK)
 {
   char *symlink;


   if (++(c->symlinknest) == 8)
     {
       free_node (currnode, c);
       free_node (oldnode, c);
       grub_free (fpath);
       return grub_error (GRUB_ERR_SYMLINK_LOOP,
     "too deep nesting of symlinks");
     }

   symlink = c->read_symlink (currnode);
   free_node (currnode, c);

   if (!symlink)
     {
       free_node (oldnode, c);
        grub_free (fpath);
       return grub_errno;
     }


   if (symlink[0] == '/')
     {
       free_node (oldnode, c);
       oldnode = c->rootnode;
     }


   find_file (symlink, oldnode, &currnode, c);
   type = c->foundtype;
   grub_free (symlink);

   if (grub_errno)
     {
       free_node (oldnode, c);
        grub_free (fpath);
       return grub_errno;
     }
 }

      free_node (oldnode, c);


      if (! next || *next == '\0')
 {
   *currfound = currnode;
   c->foundtype = type;
          grub_free (fpath);
   return 0;
 }

      name = next;
    }

  grub_free (fpath);
  return grub_error (GRUB_ERR_FILE_NOT_FOUND, "file not found");
}
