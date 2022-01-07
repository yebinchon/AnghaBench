
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gc_arena {int dummy; } ;
typedef int result_t ;
typedef int openvpn_x509_cert_t ;
typedef int fn ;


 int D_HANDSHAKE ;
 int FAILURE ;
 int OS_SPECIFIC_DIRSEP ;
 int O_RDONLY ;
 int SUCCESS ;
 char* backend_x509_get_serial (int *,struct gc_arena*) ;
 int close (int) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int msg (int ,char*,...) ;
 int openvpn_snprintf (char*,int,char*,char const*,int ,char*) ;
 int platform_open (char*,int ,int ) ;

__attribute__((used)) static result_t
verify_check_crl_dir(const char *crl_dir, openvpn_x509_cert_t *cert)
{
    result_t ret = FAILURE;
    char fn[256];
    int fd = -1;
    struct gc_arena gc = gc_new();

    char *serial = backend_x509_get_serial(cert, &gc);

    if (!openvpn_snprintf(fn, sizeof(fn), "%s%c%s", crl_dir, OS_SPECIFIC_DIRSEP, serial))
    {
        msg(D_HANDSHAKE, "VERIFY CRL: filename overflow");
        goto cleanup;
    }
    fd = platform_open(fn, O_RDONLY, 0);
    if (fd >= 0)
    {
        msg(D_HANDSHAKE, "VERIFY CRL: certificate serial number %s is revoked", serial);
        goto cleanup;
    }

    ret = SUCCESS;

cleanup:

    if (fd != -1)
    {
        close(fd);
    }
    gc_free(&gc);
    return ret;
}
