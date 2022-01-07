
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_8__ {char* pszVal; } ;
struct TYPE_9__ {TYPE_2__ u; int vt; } ;
struct TYPE_10__ {TYPE_3__ value; TYPE_1__* prop; } ;
typedef TYPE_4__ header_t ;
struct TYPE_7__ {int flags; } ;
typedef int DWORD ;


 int GetProcessHeap () ;
 char* HeapAlloc (int ,int ,int) ;
 int MPF_HASPARAMS ;
 int TRACE (char*,int ) ;
 int VT_LPSTR ;
 int debugstr_a (char*) ;
 int memcpy (char*,char*,int) ;
 int split_params (TYPE_4__*,char*) ;
 char* strstr (char*,char*) ;
 int unfold_header (char*,int) ;

__attribute__((used)) static void read_value(header_t *header, char **cur)
{
    char *end = *cur, *value;
    DWORD len;

    do {
        end = strstr(end, "\r\n");
        end += 2;
    } while(*end == ' ' || *end == '\t');

    len = end - *cur;
    value = HeapAlloc(GetProcessHeap(), 0, len + 1);
    memcpy(value, *cur, len);
    value[len] = '\0';

    unfold_header(value, len);
    TRACE("value %s\n", debugstr_a(value));

    if(header->prop->flags & MPF_HASPARAMS)
    {
        split_params(header, value);
        TRACE("value w/o params %s\n", debugstr_a(value));
    }

    header->value.vt = VT_LPSTR;
    header->value.u.pszVal = value;

    *cur = end;
}
