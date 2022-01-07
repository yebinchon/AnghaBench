
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int ut64 ;
struct TYPE_4__ {scalar_t__ Low; scalar_t__ High; } ;
typedef TYPE_1__ ut128 ;
typedef int PCONTEXT ;
typedef int HANDLE ;
typedef int DWORD ;


 int CONTEXT_ALL ;
 int CONTEXT_XSTATE ;
 scalar_t__ ERROR_INSUFFICIENT_BUFFER ;
 scalar_t__ GetLastError () ;
 int GetThreadContext (int ,int ) ;
 int XSTATE_AVX ;
 int XSTATE_LEGACY_SSE ;
 int XSTATE_MASK_AVX ;
 int free (void*) ;
 void* malloc (int) ;
 int w32_GetEnabledXStateFeatures () ;
 scalar_t__ w32_GetXStateFeaturesMask (int ,int*) ;
 scalar_t__ w32_InitializeContext (void*,int,int *,int*) ;
 scalar_t__ w32_LocateXStateFeature (int ,int ,int*) ;
 int w32_SetXStateFeaturesMask (int ,int) ;

__attribute__((used)) static int __get_avx(HANDLE th, ut128 xmm[16], ut128 ymm[16]) {
 int nregs = 0, index = 0;
 DWORD ctxsize = 0;
 DWORD featurelen = 0;
 ut64 featuremask = 0;
 ut128 *newxmm = ((void*)0);
 ut128 *newymm = ((void*)0);
 void *buffer = ((void*)0);
 PCONTEXT ctx;
 if (!w32_GetEnabledXStateFeatures) {
  return 0;
 }

 featuremask = w32_GetEnabledXStateFeatures ();
 if ((featuremask & XSTATE_MASK_AVX) == 0) {
  return 0;
 }
 if ((w32_InitializeContext (((void*)0), CONTEXT_ALL | CONTEXT_XSTATE, ((void*)0), &ctxsize)) || (GetLastError () != ERROR_INSUFFICIENT_BUFFER)) {
  return 0;
 }
 buffer = malloc (ctxsize);
 if (!buffer) {
  return 0;
 }
 if (!w32_InitializeContext (buffer, CONTEXT_ALL | CONTEXT_XSTATE, &ctx, &ctxsize)) {
  goto err_get_avx;
 }
 if (!w32_SetXStateFeaturesMask (ctx, XSTATE_MASK_AVX)) {
  goto err_get_avx;
 }

 if (!GetThreadContext (th, ctx)) {
  goto err_get_avx;
 }
 if (w32_GetXStateFeaturesMask (ctx, &featuremask)) {
  goto err_get_avx;
 }
 newxmm = (ut128 *)w32_LocateXStateFeature (ctx, XSTATE_LEGACY_SSE, &featurelen);
  nregs = featurelen / sizeof(*newxmm);
 for (index = 0; index < nregs; index++) {
  ymm[index].High = 0;
  xmm[index].High = 0;
  ymm[index].Low = 0;
  xmm[index].Low = 0;
 }
 if (newxmm != ((void*)0)) {
  for (index = 0; index < nregs; index++) {
   xmm[index].High = newxmm[index].High;
   xmm[index].Low = newxmm[index].Low;
  }
 }
 if ((featuremask & XSTATE_MASK_AVX) != 0) {

  newymm = (ut128 *)w32_LocateXStateFeature (ctx, XSTATE_AVX, ((void*)0));
  if (!newymm) {
   goto err_get_avx;
  }
  for (index = 0; index < nregs; index++) {
   ymm[index].High = newymm[index].High;
   ymm[index].Low = newymm[index].Low;
  }
 }
err_get_avx:
 free (buffer);
 return nregs;
}
