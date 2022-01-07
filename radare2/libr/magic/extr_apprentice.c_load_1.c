
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int ut32 ;
struct r_magic_entry {int dummy; } ;
typedef int line ;
struct TYPE_6__ {char const* file; int line; } ;
typedef TYPE_1__ RMagic ;
typedef int FILE ;


 int BUFSIZ ;
 scalar_t__ ENOENT ;
 scalar_t__ errno ;
 int fclose (int *) ;
 int * fgets (char*,int,int *) ;
 int file_error (TYPE_1__*,scalar_t__,char*,char const*) ;
 scalar_t__ memcmp (char*,int ,size_t) ;
 int mime_marker ;
 size_t mime_marker_len ;
 scalar_t__ parse (TYPE_1__*,struct r_magic_entry**,int *,char*,size_t,int) ;
 scalar_t__ parse_mime (TYPE_1__*,struct r_magic_entry**,int *,char*) ;
 int * r_sandbox_fopen (char const*,char*) ;
 size_t strlen (char*) ;

__attribute__((used)) static void load_1(RMagic *ms, int action, const char *file, int *errs, struct r_magic_entry **marray, ut32 *marraycount) {
 char line[BUFSIZ];
 size_t lineno = 0;
 FILE *f = r_sandbox_fopen (ms->file = file, "r");
 if (!f) {
  if (errno != ENOENT) {
   file_error (ms, errno, "cannot read magic file `%s'", file);
  }
  (*errs)++;
 } else {

  for (ms->line = 1; fgets (line, sizeof (line), f) != ((void*)0); ms->line++) {
   size_t len = strlen (line);
   if (len == 0) {
    continue;
   }
   if (line[len - 1] == '\n') {
    lineno++;
    line[len - 1] = '\0';
   }
   if (line[0] == '\0') {
    continue;
   }
   if (line[0] == '#') {
    continue;
   }
   if (len > mime_marker_len &&
       memcmp (line, mime_marker, mime_marker_len) == 0) {

    if (parse_mime (ms, marray, marraycount,
         line + mime_marker_len) != 0) {
     (*errs)++;
    }
    continue;
   }
   if (parse (ms, marray, marraycount, line, lineno, action) != 0) {
    (*errs)++;
   }
  }
  fclose (f);
 }
}
