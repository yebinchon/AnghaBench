
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint16_t ;
struct TYPE_3__ {scalar_t__ lineno; int * fp; } ;
typedef TYPE_1__ source_file ;
typedef int buf ;


 int LINE_BUF_SIZE ;
 int * fgets (char*,int,int *) ;
 int printf (char*,...) ;
 int remove_newlines (char*,int *) ;

__attribute__((used)) static void
show_lines(source_file *file, uint16_t line_min, uint16_t line_max)
{
  char buf[LINE_BUF_SIZE];
  int show_lineno = 1, found_newline = 0, is_printed = 0;

  if (file->fp == ((void*)0)) {
    return;
  }

  while (fgets(buf, sizeof(buf), file->fp) != ((void*)0)) {
    found_newline = remove_newlines(buf, file->fp);

    if (line_min <= file->lineno) {
      if (show_lineno) {
        printf("%-8d", file->lineno);
      }
      show_lineno = found_newline;
      printf(found_newline ? "%s\n" : "%s", buf);
      is_printed = 1;
    }

    if (found_newline) {
      if (line_max < ++file->lineno) {
        break;
      }
    }
  }

  if (is_printed && !found_newline) {
    printf("\n");
  }
}
