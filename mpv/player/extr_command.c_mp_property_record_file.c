
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_property {int dummy; } ;
struct MPOpts {char* record_file; } ;
struct MPContext {struct MPOpts* opts; } ;


 int M_PROPERTY_ERROR ;
 int M_PROPERTY_OK ;
 int M_PROPERTY_SET ;
 int bstr0 (char*) ;
 int bstr_equals (int ,int ) ;
 int mp_property_generic_option (struct MPContext*,struct m_property*,int,void*) ;
 int open_recorder (struct MPContext*,int) ;
 int talloc_free (char*) ;
 char* talloc_strdup (int *,char*) ;

__attribute__((used)) static int mp_property_record_file(void *ctx, struct m_property *prop,
                                   int action, void *arg)
{
    struct MPContext *mpctx = ctx;
    struct MPOpts *opts = mpctx->opts;
    if (action == M_PROPERTY_SET) {
        char *new = *(char **)arg;
        if (!bstr_equals(bstr0(new), bstr0(opts->record_file))) {
            talloc_free(opts->record_file);
            opts->record_file = talloc_strdup(((void*)0), new);
            open_recorder(mpctx, 0);

            if (new && !opts->record_file)
                return M_PROPERTY_ERROR;
        }
        return M_PROPERTY_OK;
    }
    return mp_property_generic_option(mpctx, prop, action, arg);
}
