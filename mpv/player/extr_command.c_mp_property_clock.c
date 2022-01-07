
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct tm {int dummy; } ;
struct m_property {int dummy; } ;
typedef int outstr ;


 int M_PROPERTY_UNAVAILABLE ;
 struct tm* localtime (int *) ;
 int m_property_strdup_ro (int,void*,char*) ;
 int strftime (char*,int,char*,struct tm*) ;
 int time (int *) ;

__attribute__((used)) static int mp_property_clock(void *ctx, struct m_property *prop,
                             int action, void *arg)
{
    char outstr[6];
    time_t t = time(((void*)0));
    struct tm *tmp = localtime(&t);

    if ((tmp != ((void*)0)) && (strftime(outstr, sizeof(outstr), "%H:%M", tmp) == 5))
        return m_property_strdup_ro(action, arg, outstr);
    return M_PROPERTY_UNAVAILABLE;
}
