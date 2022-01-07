
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char** MP_STATE_PORT (int ) ;
 int READLINE_HIST_SIZE ;
 int readline_hist ;
 char* str_dup_maybe (char const*) ;
 scalar_t__ strcmp (char*,char const*) ;

void readline_push_history(const char *line) {
    if (line[0] != '\0'
        && (MP_STATE_PORT(readline_hist)[0] == ((void*)0)
            || strcmp(MP_STATE_PORT(readline_hist)[0], line) != 0)) {


        char *most_recent_hist = str_dup_maybe(line);
        if (most_recent_hist != ((void*)0)) {
            for (int i = READLINE_HIST_SIZE - 1; i > 0; i--) {
                MP_STATE_PORT(readline_hist)[i] = MP_STATE_PORT(readline_hist)[i - 1];
            }
            MP_STATE_PORT(readline_hist)[0] = most_recent_hist;
        }
    }
}
