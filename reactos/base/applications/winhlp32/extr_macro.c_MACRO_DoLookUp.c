
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct lexret {int function; int proto; } ;
struct MacroDesc {scalar_t__ isBool; int fn; int arguments; int * alias; int * name; } ;


 int BOOL_FUNCTION ;
 int EMPTY ;
 int VOID_FUNCTION ;
 scalar_t__ strcasecmp (int *,char const*) ;

__attribute__((used)) static int MACRO_DoLookUp(struct MacroDesc* start, const char* name, struct lexret* lr, unsigned len)
{
    struct MacroDesc* md;

    for (md = start; md->name && len != 0; md++, len--)
    {
        if (strcasecmp(md->name, name) == 0 || (md->alias != ((void*)0) && strcasecmp(md->alias, name) == 0))
        {
            lr->proto = md->arguments;
            lr->function = md->fn;
            return md->isBool ? BOOL_FUNCTION : VOID_FUNCTION;
        }
    }
    return EMPTY;
}
