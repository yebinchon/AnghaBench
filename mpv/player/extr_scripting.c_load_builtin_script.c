
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct MPContext {int dummy; } ;


 int MPV_EVENT_SHUTDOWN ;
 int mp_client_exists (struct MPContext*,char*) ;
 int mp_client_send_event (struct MPContext*,char*,int ,int ,int *) ;
 int mp_load_script (struct MPContext*,char const*) ;
 char* script_name_from_filename (void*,char const*) ;
 int talloc_free (void*) ;
 void* talloc_new (int *) ;

__attribute__((used)) static void load_builtin_script(struct MPContext *mpctx, bool enable,
                                const char *fname)
{
    void *tmp = talloc_new(((void*)0));


    char *name = script_name_from_filename(tmp, fname);
    if (enable != mp_client_exists(mpctx, name)) {
        if (enable) {
            mp_load_script(mpctx, fname);
        } else {




            mp_client_send_event(mpctx, name, 0, MPV_EVENT_SHUTDOWN, ((void*)0));
        }
    }
    talloc_free(tmp);
}
