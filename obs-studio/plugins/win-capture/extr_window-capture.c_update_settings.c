
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct window_capture {int priority; void* compatibility; void* use_wildcards; void* cursor; int * class; int * executable; int source; int * title; } ;
typedef int obs_data_t ;
typedef enum window_priority { ____Placeholder_window_priority } window_priority ;


 int LOG_DEBUG ;
 int LOG_INFO ;
 int bfree (int *) ;
 int blog (int ,char*,int *,...) ;
 int build_window_strings (char const*,int **,int **,int **) ;
 void* obs_data_get_bool (int *,char*) ;
 scalar_t__ obs_data_get_int (int *,char*) ;
 char* obs_data_get_string (int *,char*) ;
 int obs_source_get_name (int ) ;

__attribute__((used)) static void update_settings(struct window_capture *wc, obs_data_t *s)
{
 const char *window = obs_data_get_string(s, "window");
 int priority = (int)obs_data_get_int(s, "priority");

 bfree(wc->title);
 bfree(wc->class);
 bfree(wc->executable);

 build_window_strings(window, &wc->class, &wc->title, &wc->executable);

 if (wc->title != ((void*)0)) {
  blog(LOG_INFO,
       "[window-capture: '%s'] update settings:\n"
       "\texecutable: %s",
       obs_source_get_name(wc->source), wc->executable);
  blog(LOG_DEBUG, "\tclass:      %s", wc->class);
 }

 wc->priority = (enum window_priority)priority;
 wc->cursor = obs_data_get_bool(s, "cursor");
 wc->use_wildcards = obs_data_get_bool(s, "use_wildcards");
 wc->compatibility = obs_data_get_bool(s, "compatibility");
}
