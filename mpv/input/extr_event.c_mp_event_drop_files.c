
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct input_ctx {int dummy; } ;
typedef enum mp_dnd_action { ____Placeholder_mp_dnd_action } mp_dnd_action ;


 int DND_REPLACE ;
 int mp_input_run_cmd (struct input_ctx*,char const**) ;
 int mp_might_be_subtitle_file (char*) ;

void mp_event_drop_files(struct input_ctx *ictx, int num_files, char **files,
                         enum mp_dnd_action action)
{
    bool all_sub = 1;
    for (int i = 0; i < num_files; i++)
        all_sub &= mp_might_be_subtitle_file(files[i]);

    if (all_sub) {
        for (int i = 0; i < num_files; i++) {
            const char *cmd[] = {
                "osd-auto",
                "sub-add",
                files[i],
                ((void*)0)
            };
            mp_input_run_cmd(ictx, cmd);
        }
    } else {
        for (int i = 0; i < num_files; i++) {
            const char *cmd[] = {
                "osd-auto",
                "loadfile",
                files[i],


                (i == 0 && action == DND_REPLACE) ? "replace" : "append-play",
                ((void*)0)
            };
            mp_input_run_cmd(ictx, cmd);
        }
    }
}
