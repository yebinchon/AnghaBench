
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kms {int fd; scalar_t__ atomic_context; int * encoder; int * connector; int mode; } ;


 int close (int ) ;
 int drmModeFreeConnector (int *) ;
 int drmModeFreeEncoder (int *) ;
 int drm_atomic_destroy_context (scalar_t__) ;
 int drm_mode_destroy_blob (int ,int *) ;
 int talloc_free (struct kms*) ;

void kms_destroy(struct kms *kms)
{
    if (!kms)
        return;
    drm_mode_destroy_blob(kms->fd, &kms->mode);
    if (kms->connector) {
        drmModeFreeConnector(kms->connector);
        kms->connector = ((void*)0);
    }
    if (kms->encoder) {
        drmModeFreeEncoder(kms->encoder);
        kms->encoder = ((void*)0);
    }
    if (kms->atomic_context) {
       drm_atomic_destroy_context(kms->atomic_context);
    }

    close(kms->fd);
    talloc_free(kms);
}
