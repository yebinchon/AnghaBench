
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mpv_global {int log; } ;
typedef int FILE ;


 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int mp_err (int ,char*,char const*,char*) ;
 char* mp_get_user_path (void*,struct mpv_global*,char*) ;
 int mp_msg_lock ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 scalar_t__ strcmp (char*,char*) ;
 int talloc_free (void*) ;
 void* talloc_new (int *) ;
 char* talloc_strdup (int *,char*) ;

__attribute__((used)) static void reopen_file(char *opt, char **current_path, FILE **file,
                        const char *type, struct mpv_global *global)
{
    void *tmp = talloc_new(((void*)0));
    bool fail = 0;

    char *new_path = mp_get_user_path(tmp, global, opt);
    if (!new_path)
        new_path = "";

    pthread_mutex_lock(&mp_msg_lock);

    char *old_path = *current_path ? *current_path : "";
    if (strcmp(old_path, new_path) != 0) {
        if (*file)
            fclose(*file);
        *file = ((void*)0);
        talloc_free(*current_path);
        *current_path = talloc_strdup(((void*)0), new_path);
        if (new_path[0]) {
            *file = fopen(new_path, "wb");
            fail = !*file;
        }
    }

    pthread_mutex_unlock(&mp_msg_lock);

    if (fail)
        mp_err(global->log, "Failed to open %s file '%s'\n", type, new_path);

    talloc_free(tmp);
}
