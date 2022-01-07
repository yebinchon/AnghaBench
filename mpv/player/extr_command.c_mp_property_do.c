
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_option {int * type; int member_0; } ;
struct MPContext {int log; } ;


 int MP_VERBOSE (struct MPContext*,char*,char const*,char*,char*,int) ;
 int MSGL_V ;


 scalar_t__ is_property_set (int,void*) ;
 char* m_option_print (struct m_option*,void*) ;
 int m_option_type_node ;
 int m_option_type_string ;
 scalar_t__ mp_msg_test (int ,int ) ;
 int mp_property_do_silent (char const*,int,void*,struct MPContext*) ;
 int talloc_free (char*) ;

int mp_property_do(const char *name, int action, void *val,
                   struct MPContext *ctx)
{
    int r = mp_property_do_silent(name, action, val, ctx);
    if (mp_msg_test(ctx->log, MSGL_V) && is_property_set(action, val)) {
        struct m_option ot = {0};
        void *data = val;
        switch (action) {
        case 129:
            ot.type = &m_option_type_node;
            break;
        case 128:
            ot.type = &m_option_type_string;
            data = &val;
            break;
        }
        char *t = ot.type ? m_option_print(&ot, data) : ((void*)0);
        MP_VERBOSE(ctx, "Set property: %s%s%s -> %d\n",
                   name, t ? "=" : "", t ? t : "", r);
        talloc_free(t);
    }
    return r;
}
