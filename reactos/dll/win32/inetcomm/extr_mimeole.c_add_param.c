
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* name; int entry; int value; } ;
typedef TYPE_1__ param_t ;
struct TYPE_5__ {int params; } ;
typedef TYPE_2__ header_t ;


 int GetProcessHeap () ;
 void* HeapAlloc (int ,int ,int) ;
 int TRACE (char*,char const*) ;
 int WARN (char*) ;
 int list_add_tail (int *,int *) ;
 int memcpy (char*,char const*,int) ;
 char* strchr (char const*,char) ;
 int unquote_string (char const*) ;

__attribute__((used)) static void add_param(header_t *header, const char *p)
{
    const char *key = p, *value, *cp = p;
    param_t *param;
    char *name;

    TRACE("got param %s\n", p);

    while (*key == ' ' || *key == '\t' ) key++;

    cp = strchr(key, '=');
    if(!cp)
    {
        WARN("malformed parameter - skipping\n");
        return;
    }

    name = HeapAlloc(GetProcessHeap(), 0, cp - key + 1);
    memcpy(name, key, cp - key);
    name[cp - key] = '\0';

    value = cp + 1;

    param = HeapAlloc(GetProcessHeap(), 0, sizeof(*param));
    param->name = name;
    param->value = unquote_string(value);
    list_add_tail(&header->params, &param->entry);
}
