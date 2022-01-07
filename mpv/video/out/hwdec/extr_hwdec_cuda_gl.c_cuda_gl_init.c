
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct ra_hwdec {int global; int ra; struct cuda_hw_priv* priv; } ;
struct cuda_hw_priv {int do_full_sync; int ext_uninit; int ext_init; int decode_ctx; int display_ctx; TYPE_2__* cu; } ;
struct TYPE_5__ {int (* cuCtxCreate ) (int *,int ,scalar_t__) ;int (* cuCtxPopCurrent ) (int *) ;int (* cuDeviceGet ) (scalar_t__*,int) ;int (* cuGLGetDevices ) (unsigned int*,scalar_t__*,int,int ) ;} ;
struct TYPE_4__ {int version; int es; } ;
typedef TYPE_1__ GL ;
typedef TYPE_2__ CudaFunctions ;
typedef scalar_t__ CUdevice ;
typedef int CUcontext ;


 int CHECK_CU (int ) ;
 int CU_CTX_SCHED_BLOCKING_SYNC ;
 int CU_GL_DEVICE_LIST_ALL ;
 int MP_INFO (struct ra_hwdec const*,char*) ;
 int MP_VERBOSE (struct ra_hwdec const*,char*) ;
 int cuda_ext_gl_init ;
 int cuda_ext_gl_uninit ;
 int m_option_type_choice ;
 int mp_read_option_raw (int ,char*,int *,int*) ;
 TYPE_1__* ra_gl_get (int ) ;
 scalar_t__ ra_is_gl (int ) ;
 int stub1 (unsigned int*,scalar_t__*,int,int ) ;
 int stub2 (int *,int ,scalar_t__) ;
 int stub3 (scalar_t__*,int) ;
 int stub4 (int *) ;
 int stub5 (int *) ;
 int stub6 (int *,int ,scalar_t__) ;

bool cuda_gl_init(const struct ra_hwdec *hw) {
    int ret = 0;
    struct cuda_hw_priv *p = hw->priv;
    CudaFunctions *cu = p->cu;

    if (ra_is_gl(hw->ra)) {
        GL *gl = ra_gl_get(hw->ra);
        if (gl->version < 210 && gl->es < 300) {
            MP_VERBOSE(hw, "need OpenGL >= 2.1 or OpenGL-ES >= 3.0\n");
            return 0;
        }
    } else {

        return 0;
    }

    CUdevice display_dev;
    unsigned int device_count;
    ret = CHECK_CU(cu->cuGLGetDevices(&device_count, &display_dev, 1,
                                      CU_GL_DEVICE_LIST_ALL));
    if (ret < 0)
        return 0;

    ret = CHECK_CU(cu->cuCtxCreate(&p->display_ctx, CU_CTX_SCHED_BLOCKING_SYNC,
                                   display_dev));
    if (ret < 0)
        return 0;

    p->decode_ctx = p->display_ctx;

    int decode_dev_idx = -1;
    mp_read_option_raw(hw->global, "cuda-decode-device", &m_option_type_choice,
                       &decode_dev_idx);

    if (decode_dev_idx > -1) {
        CUcontext dummy;
        CUdevice decode_dev;
        ret = CHECK_CU(cu->cuDeviceGet(&decode_dev, decode_dev_idx));
        if (ret < 0) {
            CHECK_CU(cu->cuCtxPopCurrent(&dummy));
            return 0;
        }

        if (decode_dev != display_dev) {
            MP_INFO(hw, "Using separate decoder and display devices\n");


            ret = CHECK_CU(cu->cuCtxPopCurrent(&dummy));
            if (ret < 0)
                return 0;

            ret = CHECK_CU(cu->cuCtxCreate(&p->decode_ctx, CU_CTX_SCHED_BLOCKING_SYNC,
                                           decode_dev));
            if (ret < 0)
                return 0;
        }
    }


    p->do_full_sync = 1;

    p->ext_init = cuda_ext_gl_init;
    p->ext_uninit = cuda_ext_gl_uninit;

    return 1;
}
