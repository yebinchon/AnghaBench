
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int temp ;
struct m_property {int dummy; } ;
typedef int MPContext ;


 int get_current_osd_sym (int *,char*,int) ;
 int m_property_strdup_ro (int,void*,char*) ;

__attribute__((used)) static int mp_property_osd_sym(void *ctx, struct m_property *prop,
                               int action, void *arg)
{
    MPContext *mpctx = ctx;
    char temp[20];
    get_current_osd_sym(mpctx, temp, sizeof(temp));
    return m_property_strdup_ro(action, arg, temp);
}
