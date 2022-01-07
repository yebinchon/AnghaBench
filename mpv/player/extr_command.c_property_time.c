
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct m_property_action_arg {scalar_t__ arg; int action; int key; } ;
struct m_option {int type; } ;


 int CONF_TYPE_TIME ;
 double MP_NOPTS_VALUE ;



 int M_PROPERTY_NOT_IMPLEMENTED ;
 int M_PROPERTY_OK ;

 int M_PROPERTY_UNAVAILABLE ;
 int M_PROPERTY_UNKNOWN ;
 char* mp_format_time (double,int) ;
 int strcmp (int ,char*) ;

__attribute__((used)) static int property_time(int action, void *arg, double time)
{
    if (time == MP_NOPTS_VALUE)
        return M_PROPERTY_UNAVAILABLE;

    const struct m_option time_type = {.type = CONF_TYPE_TIME};
    switch (action) {
    case 131:
        *(double *)arg = time;
        return M_PROPERTY_OK;
    case 130:
        *(struct m_option *)arg = time_type;
        return M_PROPERTY_OK;
    case 129: {
        struct m_property_action_arg *ka = arg;

        if (strcmp(ka->key, "full") != 0)
            return M_PROPERTY_UNKNOWN;

        switch (ka->action) {
        case 131:
            *(double *)ka->arg = time;
            return M_PROPERTY_OK;
        case 128:
            *(char **)ka->arg = mp_format_time(time, 1);
            return M_PROPERTY_OK;
        case 130:
            *(struct m_option *)ka->arg = time_type;
            return M_PROPERTY_OK;
        }
    }
    }
    return M_PROPERTY_NOT_IMPLEMENTED;
}
