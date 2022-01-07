
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int jsval_t ;
 int assert (int ) ;
 int debugstr_jsstr (int ) ;
 char const* debugstr_variant (int ) ;
 int get_bool (int const) ;
 int get_number (int const) ;
 int get_object (int const) ;
 int get_string (int const) ;
 int get_variant (int const) ;
 int jsval_type (int const) ;
 char const* wine_dbg_sprintf (char*,int ) ;

const char *debugstr_jsval(const jsval_t v)
{
    switch(jsval_type(v)) {
    case 129:
        return "undefined";
    case 133:
        return "null";
    case 131:
        return wine_dbg_sprintf("obj(%p)", get_object(v));
    case 130:
        return wine_dbg_sprintf("str(%s)", debugstr_jsstr(get_string(v)));
    case 132:
        return wine_dbg_sprintf("%lf", get_number(v));
    case 134:
        return get_bool(v) ? "true" : "false";
    case 128:
        return debugstr_variant(get_variant(v));
    }

    assert(0);
    return ((void*)0);
}
