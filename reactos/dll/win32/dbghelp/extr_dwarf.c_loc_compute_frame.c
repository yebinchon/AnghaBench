
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct location {int kind; scalar_t__ offset; } ;
struct symt_hierarchy_point {struct location loc; } ;
struct TYPE_5__ {int name; } ;
struct symt_function {TYPE_1__ hash_elt; int vchildren; } ;
struct symt {scalar_t__ tag; } ;
struct process {int handle; } ;
struct TYPE_8__ {TYPE_3__* dwarf2_info; } ;
struct module_format {TYPE_4__ u; } ;
typedef enum location_error { ____Placeholder_location_error } location_error ;
typedef int dwarf2_traverse_context_t ;
struct TYPE_6__ {scalar_t__ address; } ;
struct TYPE_7__ {TYPE_2__ debug_loc; } ;
typedef int DWORD_PTR ;


 scalar_t__ SymTagCustom ;
 int WARN (char*,...) ;
 int compute_location (int *,struct location*,int ,int *) ;
 int dwarf2_lookup_loclist (struct module_format const*,scalar_t__,int ,int *) ;

 int loc_err_internal ;
 int loc_err_out_of_scope ;
 int loc_err_too_complex ;


 int loc_user ;
 struct symt** vector_at (int *,unsigned int) ;
 unsigned int vector_length (int *) ;

__attribute__((used)) static enum location_error loc_compute_frame(struct process* pcs,
                                             const struct module_format* modfmt,
                                             const struct symt_function* func,
                                             DWORD_PTR ip, struct location* frame)
{
    struct symt** psym = ((void*)0);
    struct location* pframe;
    dwarf2_traverse_context_t lctx;
    enum location_error err;
    unsigned int i;

    for (i=0; i<vector_length(&func->vchildren); i++)
    {
        psym = vector_at(&func->vchildren, i);
        if ((*psym)->tag == SymTagCustom)
        {
            pframe = &((struct symt_hierarchy_point*)*psym)->loc;


            switch (pframe->kind)
            {
            case 128:
            case 129:
                *frame = *pframe;
                break;
            case 130:
                WARN("Searching loclist for %s\n", func->hash_elt.name);
                if (!dwarf2_lookup_loclist(modfmt,
                                           modfmt->u.dwarf2_info->debug_loc.address + pframe->offset,
                                           ip, &lctx))
                    return loc_err_out_of_scope;
                if ((err = compute_location(&lctx, frame, pcs->handle, ((void*)0))) < 0) return err;
                if (frame->kind >= loc_user)
                {
                    WARN("Couldn't compute runtime frame location\n");
                    return loc_err_too_complex;
                }
                break;
            default:
                WARN("Unsupported frame kind %d\n", pframe->kind);
                return loc_err_internal;
            }
            return 0;
        }
    }
    WARN("Couldn't find Custom function point, whilst location list offset is searched\n");
    return loc_err_internal;
}
