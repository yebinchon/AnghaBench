
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symt {int dummy; } ;
struct module {int dummy; } ;
struct ParseTypedefData {int err_idx; char const* ptr; TYPE_1__* errors; scalar_t__ idx; struct module* module; } ;
struct TYPE_2__ {char const* ptr; int line; } ;


 int ERR (char*,int ,int ) ;
 int FALSE ;
 int TRACE (char*,...) ;
 int TRUE ;
 int debugstr_a (char const*) ;
 int stabs_pts_read_type_def (struct ParseTypedefData*,char const*,struct symt**) ;
 char const* strchr (char const*,char) ;

__attribute__((used)) static int stabs_parse_typedef(struct module* module, const char* ptr,
                               const char* typename)
{
    struct ParseTypedefData ptd;
    struct symt* dt;
    int ret = -1;



    TRACE("%s => %s\n", typename, debugstr_a(ptr));
    ptd.module = module;
    ptd.idx = 0;



    for (ptd.ptr = ptr - 1; ;)
    {
        ptd.ptr = strchr(ptd.ptr + 1, ':');
        if (ptd.ptr == ((void*)0) || *++ptd.ptr != ':') break;
    }
    if (ptd.ptr)
    {
 if (*ptd.ptr != '(') ptd.ptr++;

 if (*ptd.ptr != '(') ptd.ptr++;
 ret = stabs_pts_read_type_def(&ptd, typename, &dt);
    }

    if (ret == -1 || *ptd.ptr)
    {
 ERR("Failure on %s at %s\n", debugstr_a(ptr), debugstr_a(ptd.ptr));

 return FALSE;
    }

    return TRUE;
}
