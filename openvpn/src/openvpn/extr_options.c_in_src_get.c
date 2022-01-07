
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int multiline; int fp; } ;
struct in_src {scalar_t__ type; TYPE_1__ u; } ;


 int ASSERT (int ) ;
 int BOOL_CAST (int ) ;
 scalar_t__ IS_TYPE_BUF ;
 scalar_t__ IS_TYPE_FP ;
 int buf_parse (int ,char,char*,int const) ;
 int fgets (char*,int const,int ) ;
 int strcat (char*,char*) ;
 scalar_t__ strlen (char*) ;

__attribute__((used)) static bool
in_src_get(const struct in_src *is, char *line, const int size)
{
    if (is->type == IS_TYPE_FP)
    {
        return BOOL_CAST(fgets(line, size, is->u.fp));
    }
    else if (is->type == IS_TYPE_BUF)
    {
        bool status = buf_parse(is->u.multiline, '\n', line, size);
        if ((int) strlen(line) + 1 < size)
        {
            strcat(line, "\n");
        }
        return status;
    }
    else
    {
        ASSERT(0);
        return 0;
    }
}
