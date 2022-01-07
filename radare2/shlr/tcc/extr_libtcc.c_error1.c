
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int va_list ;
typedef int buf ;
struct TYPE_6__ {char* filename; scalar_t__ line_num; struct TYPE_6__* prev; } ;
struct TYPE_5__ {int nb_errors; scalar_t__ warn_error; int error_opaque; int (* error_func ) (int ,char*) ;TYPE_2__** include_stack_ptr; TYPE_2__** include_stack; } ;
typedef TYPE_1__ TCCState ;
typedef TYPE_2__ BufferedFile ;


 TYPE_2__* file ;
 int fprintf (int ,char*,char*) ;
 int stderr ;
 int strcat_printf (char*,int,char*,...) ;
 int strcat_vprintf (char*,int,char const*,int ) ;
 int stub1 (int ,char*) ;

__attribute__((used)) static void error1(TCCState *s1, int is_warning, const char *fmt, va_list ap)
{
 char buf[2048];
 BufferedFile **pf, *f;

 buf[0] = '\0';

 for (f = file; f && f->filename[0] == ':'; f = f->prev) {
  ;
 }
 if (f) {
  for (pf = s1->include_stack; pf < s1->include_stack_ptr; pf++) {
   strcat_printf (buf, sizeof(buf), "In file included from %s:%d:\n",
    (*pf)->filename, (*pf)->line_num);
  }
  if (f->line_num > 0) {
   strcat_printf (buf, sizeof(buf), "%s:%d: ",
    f->filename, f->line_num);
  } else {
   strcat_printf (buf, sizeof(buf), "%s: ",
    f->filename);
  }
 } else {
  strcat_printf (buf, sizeof(buf), "tcc: ");
 }
 if (is_warning) {
  strcat_printf (buf, sizeof(buf), "warning: ");
 } else {
  strcat_printf (buf, sizeof(buf), "error: ");
 }
 strcat_vprintf (buf, sizeof(buf), fmt, ap);

 if (!s1->error_func) {

  fprintf (stderr, "%s\n", buf);
 } else {
  s1->error_func (s1->error_opaque, buf);
 }
 if (!is_warning || s1->warn_error) {
  s1->nb_errors++;
 }
}
