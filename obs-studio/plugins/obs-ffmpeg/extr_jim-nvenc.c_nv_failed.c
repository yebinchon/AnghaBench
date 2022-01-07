
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nvenc_data {int dummy; } ;
typedef scalar_t__ NVENCSTATUS ;


 scalar_t__ NV_ENC_SUCCESS ;
 int error (char*,char const*,char const*,int,int ) ;
 int nv_error_name (scalar_t__) ;

__attribute__((used)) static inline bool nv_failed(struct nvenc_data *enc, NVENCSTATUS err,
        const char *func, const char *call)
{
 if (err == NV_ENC_SUCCESS)
  return 0;

 error("%s: %s failed: %d (%s)", func, call, (int)err,
       nv_error_name(err));
 return 1;
}
