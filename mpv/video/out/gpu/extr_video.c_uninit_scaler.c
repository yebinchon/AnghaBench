
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct scaler {int initialized; int * kernel; int lut; int sep_fbo; } ;
struct gl_video {int ra; } ;


 int ra_tex_free (int ,int *) ;

__attribute__((used)) static void uninit_scaler(struct gl_video *p, struct scaler *scaler)
{
    ra_tex_free(p->ra, &scaler->sep_fbo);
    ra_tex_free(p->ra, &scaler->lut);
    scaler->kernel = ((void*)0);
    scaler->initialized = 0;
}
