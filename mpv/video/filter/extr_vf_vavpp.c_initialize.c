
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct priv {int do_deint; TYPE_1__* opts; scalar_t__ num_buffers; scalar_t__* buffers; int context; int display; int config; } ;
struct mp_filter {struct priv* priv; } ;
typedef int param ;
typedef int VAStatus ;
typedef size_t VAProcFilterType ;
struct TYPE_7__ {size_t type; scalar_t__ algorithm; int member_0; } ;
typedef TYPE_2__ VAProcFilterParameterBufferDeinterlacing ;
struct TYPE_8__ {scalar_t__ type; } ;
typedef TYPE_3__ VAProcFilterCapDeinterlacing ;
typedef scalar_t__ VAProcDeinterlacingType ;
typedef int VAContextID ;
typedef int VAConfigID ;
typedef scalar_t__ VABufferID ;
struct TYPE_6__ {int deint_type; } ;


 int CHECK_VA_STATUS (struct mp_filter*,char*) ;
 int MP_ARRAY_SIZE (scalar_t__*) ;
 int MP_VERBOSE (struct mp_filter*,char*,scalar_t__) ;
 int MP_WARN (struct mp_filter*,char*) ;
 int VAEntrypointVideoProc ;
 int VAProcDeinterlacingCount ;
 int VAProcFilterCount ;
 size_t VAProcFilterDeinterlacing ;
 int VAProfileNone ;
 scalar_t__ VA_INVALID_ID ;
 scalar_t__* deint_algorithm ;
 int vaCreateConfig (int ,int ,int ,int *,int ,int *) ;
 int vaCreateContext (int ,int ,int ,int ,int ,int *,int ,int *) ;
 int vaQueryVideoProcFilters (int ,int ,size_t*,int*) ;
 scalar_t__ va_create_filter_buffer (struct mp_filter*,int,int,TYPE_2__*) ;
 int va_query_filter_caps (struct mp_filter*,size_t,TYPE_3__*,int) ;

__attribute__((used)) static bool initialize(struct mp_filter *vf)
{
    struct priv *p = vf->priv;
    VAStatus status;

    VAConfigID config;
    status = vaCreateConfig(p->display, VAProfileNone, VAEntrypointVideoProc,
                            ((void*)0), 0, &config);
    if (!CHECK_VA_STATUS(vf, "vaCreateConfig()"))
        return 0;
    p->config = config;

    VAContextID context;
    status = vaCreateContext(p->display, p->config, 0, 0, 0, ((void*)0), 0, &context);
    if (!CHECK_VA_STATUS(vf, "vaCreateContext()"))
        return 0;
    p->context = context;

    VAProcFilterType filters[VAProcFilterCount];
    int num_filters = VAProcFilterCount;
    status = vaQueryVideoProcFilters(p->display, p->context, filters, &num_filters);
    if (!CHECK_VA_STATUS(vf, "vaQueryVideoProcFilters()"))
        return 0;

    VABufferID buffers[VAProcFilterCount];
    for (int i = 0; i < VAProcFilterCount; i++)
        buffers[i] = VA_INVALID_ID;
    for (int i = 0; i < num_filters; i++) {
        if (filters[i] == VAProcFilterDeinterlacing) {
            VAProcFilterCapDeinterlacing caps[VAProcDeinterlacingCount];
            int num = va_query_filter_caps(vf, VAProcFilterDeinterlacing, caps,
                                           VAProcDeinterlacingCount);
            if (!num)
                continue;
            if (p->opts->deint_type < 0) {
                for (int n = MP_ARRAY_SIZE(deint_algorithm) - 1; n > 0; n--) {
                    for (int x = 0; x < num; x++) {
                        if (caps[x].type == deint_algorithm[n]) {
                            p->opts->deint_type = n;
                            MP_VERBOSE(vf, "Selected deinterlacing algorithm: "
                                       "%d\n", deint_algorithm[n]);
                            goto found;
                        }
                    }
                }
                found: ;
            }
            if (p->opts->deint_type <= 0)
                continue;
            VAProcDeinterlacingType algorithm =
                deint_algorithm[p->opts->deint_type];
            for (int n=0; n < num; n++) {
                if (caps[n].type != algorithm)
                    continue;
                VAProcFilterParameterBufferDeinterlacing param = {0};
                param.type = VAProcFilterDeinterlacing;
                param.algorithm = algorithm;
                buffers[VAProcFilterDeinterlacing] =
                    va_create_filter_buffer(vf, sizeof(param), 1, &param);
            }
            if (buffers[VAProcFilterDeinterlacing] == VA_INVALID_ID)
                MP_WARN(vf, "Selected deinterlacing algorithm not supported.\n");
        }
    }
    if (p->opts->deint_type < 0)
        p->opts->deint_type = 0;
    p->num_buffers = 0;
    if (buffers[VAProcFilterDeinterlacing] != VA_INVALID_ID)
        p->buffers[p->num_buffers++] = buffers[VAProcFilterDeinterlacing];
    p->do_deint = !!p->opts->deint_type;

    return 1;
}
