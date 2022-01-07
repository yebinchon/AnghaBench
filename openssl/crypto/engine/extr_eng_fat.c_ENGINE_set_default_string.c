
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ENGINE ;


 int CONF_parse_list (char const*,char,int,int ,unsigned int*) ;
 int ENGINE_F_ENGINE_SET_DEFAULT_STRING ;
 int ENGINE_R_INVALID_STRING ;
 int ENGINE_set_default (int *,unsigned int) ;
 int ENGINEerr (int ,int ) ;
 int ERR_add_error_data (int,char*,char const*) ;
 int int_def_cb ;

int ENGINE_set_default_string(ENGINE *e, const char *def_list)
{
    unsigned int flags = 0;
    if (!CONF_parse_list(def_list, ',', 1, int_def_cb, &flags)) {
        ENGINEerr(ENGINE_F_ENGINE_SET_DEFAULT_STRING,
                  ENGINE_R_INVALID_STRING);
        ERR_add_error_data(2, "str=", def_list);
        return 0;
    }
    return ENGINE_set_default(e, flags);
}
