
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symt_compiland {int dummy; } ;
struct msc_debug_info {int module; } ;
struct location {unsigned int offset; scalar_t__ reg; int kind; } ;
typedef scalar_t__ BOOL ;


 int FALSE ;
 unsigned int codeview_get_address (struct msc_debug_info const*,unsigned int,unsigned int) ;
 int codeview_get_type (unsigned int,int ) ;
 int loc_absolute ;
 int loc_tlsrel ;
 int symt_find_nearest (int ,unsigned int) ;
 int symt_new_global_variable (int ,struct symt_compiland*,char const*,scalar_t__,struct location,int ,int ) ;

__attribute__((used)) static inline void codeview_add_variable(const struct msc_debug_info* msc_dbg,
                                         struct symt_compiland* compiland,
                                         const char* name,
                                         unsigned segment, unsigned offset,
                                         unsigned symtype, BOOL is_local, BOOL in_tls, BOOL force)
{
    if (name && *name)
    {
        struct location loc;

        loc.kind = in_tls ? loc_tlsrel : loc_absolute;
        loc.reg = 0;
        loc.offset = in_tls ? offset : codeview_get_address(msc_dbg, segment, offset);
        if (force || in_tls || !symt_find_nearest(msc_dbg->module, loc.offset))
        {
            symt_new_global_variable(msc_dbg->module, compiland,
                                     name, is_local, loc, 0,
                                     codeview_get_type(symtype, FALSE));
        }
    }
}
