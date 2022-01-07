
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dstr {int member_0; } ;
typedef enum window_priority { ____Placeholder_window_priority } window_priority ;
typedef int HWND ;


 int WINDOW_PRIORITY_CLASS ;
 int WINDOW_PRIORITY_EXE ;
 int WINDOW_PRIORITY_TITLE ;
 int abs (scalar_t__) ;
 scalar_t__ dstr_cmpi (struct dstr*,char const*) ;
 int dstr_free (struct dstr*) ;
 int get_window_class (struct dstr*,int ) ;
 int get_window_exe (struct dstr*,int ) ;
 int get_window_title (struct dstr*,int ) ;

__attribute__((used)) static int window_rating(HWND window, enum window_priority priority,
    const char *class, const char *title, const char *exe,
    bool uwp_window)
{
 struct dstr cur_class = {0};
 struct dstr cur_title = {0};
 struct dstr cur_exe = {0};
 int val = 0x7FFFFFFF;

 if (!get_window_exe(&cur_exe, window))
  return 0x7FFFFFFF;
 get_window_title(&cur_title, window);
 get_window_class(&cur_class, window);

 bool class_matches = dstr_cmpi(&cur_class, class) == 0;
 bool exe_matches = dstr_cmpi(&cur_exe, exe) == 0;
 int title_val = abs(dstr_cmpi(&cur_title, title));


 if (uwp_window) {
  if (priority == WINDOW_PRIORITY_EXE && !exe_matches)
   val = 0x7FFFFFFF;
  else
   val = title_val == 0 ? 0 : 0x7FFFFFFF;

 } else if (priority == WINDOW_PRIORITY_CLASS) {
  val = class_matches ? title_val : 0x7FFFFFFF;
  if (val != 0x7FFFFFFF && !exe_matches)
   val += 0x1000;

 } else if (priority == WINDOW_PRIORITY_TITLE) {
  val = title_val == 0 ? 0 : 0x7FFFFFFF;

 } else if (priority == WINDOW_PRIORITY_EXE) {
  val = exe_matches ? title_val : 0x7FFFFFFF;
 }

 dstr_free(&cur_class);
 dstr_free(&cur_title);
 dstr_free(&cur_exe);

 return val;
}
