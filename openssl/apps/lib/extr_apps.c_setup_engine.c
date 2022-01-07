
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int BIO_printf (int ,char*,...) ;
 int ENGINE_CTRL_SET_LOGSTREAM ;
 int ENGINE_METHOD_ALL ;
 int * ENGINE_by_id (char const*) ;
 int ENGINE_ctrl (int *,int ,int ,int ,int ) ;
 int ENGINE_ctrl_cmd (int *,char*,int ,void*,int ,int) ;
 int ENGINE_free (int *) ;
 char const* ENGINE_get_id (int *) ;
 int ENGINE_register_all_complete () ;
 int ENGINE_set_default (int *,int ) ;
 int ERR_print_errors (int ) ;
 int bio_err ;
 scalar_t__ get_ui_method () ;
 scalar_t__ strcmp (char const*,char*) ;
 int * try_load_engine (char const*) ;

ENGINE *setup_engine(const char *engine, int debug)
{
    ENGINE *e = ((void*)0);


    if (engine != ((void*)0)) {
        if (strcmp(engine, "auto") == 0) {
            BIO_printf(bio_err, "enabling auto ENGINE support\n");
            ENGINE_register_all_complete();
            return ((void*)0);
        }
        if ((e = ENGINE_by_id(engine)) == ((void*)0)
            && (e = try_load_engine(engine)) == ((void*)0)) {
            BIO_printf(bio_err, "invalid engine \"%s\"\n", engine);
            ERR_print_errors(bio_err);
            return ((void*)0);
        }
        if (debug) {
            ENGINE_ctrl(e, ENGINE_CTRL_SET_LOGSTREAM, 0, bio_err, 0);
        }
        ENGINE_ctrl_cmd(e, "SET_USER_INTERFACE", 0, (void *)get_ui_method(),
                        0, 1);
        if (!ENGINE_set_default(e, ENGINE_METHOD_ALL)) {
            BIO_printf(bio_err, "can't use that engine\n");
            ERR_print_errors(bio_err);
            ENGINE_free(e);
            return ((void*)0);
        }

        BIO_printf(bio_err, "engine \"%s\" set.\n", ENGINE_get_id(e));
    }

    return e;
}
