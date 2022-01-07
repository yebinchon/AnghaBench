
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct x509_track {int dummy; } ;
struct gc_arena {int dummy; } ;
struct env_set {int dummy; } ;
struct buffer {int dummy; } ;
typedef int openvpn_x509_cert_t ;
typedef int envname ;


 int BLEN (struct buffer*) ;
 int BPTR (struct buffer*) ;
 char* backend_x509_get_serial (int *,struct gc_arena*) ;
 char* backend_x509_get_serial_hex (int *,struct gc_arena*) ;
 char* format_hex_ex (int ,int ,int ,int,char*,struct gc_arena*) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int openvpn_snprintf (char*,int,char*,int) ;
 int setenv_str (struct env_set*,char*,char const*) ;
 struct buffer x509_get_sha1_fingerprint (int *,struct gc_arena*) ;
 struct buffer x509_get_sha256_fingerprint (int *,struct gc_arena*) ;
 int x509_setenv (struct env_set*,int,int *) ;
 int x509_setenv_track (struct x509_track const*,struct env_set*,int,int *) ;

__attribute__((used)) static void
verify_cert_set_env(struct env_set *es, openvpn_x509_cert_t *peer_cert, int cert_depth,
                    const char *subject, const char *common_name,
                    const struct x509_track *x509_track)
{
    char envname[64];
    char *serial = ((void*)0);
    struct gc_arena gc = gc_new();


    if (x509_track)
    {
        x509_setenv_track(x509_track, es, cert_depth, peer_cert);
    }
    else
    {
        x509_setenv(es, cert_depth, peer_cert);
    }


    openvpn_snprintf(envname, sizeof(envname), "tls_id_%d", cert_depth);
    setenv_str(es, envname, subject);
    {
        struct buffer sha1 = x509_get_sha1_fingerprint(peer_cert, &gc);
        struct buffer sha256 = x509_get_sha256_fingerprint(peer_cert, &gc);

        openvpn_snprintf(envname, sizeof(envname), "tls_digest_%d", cert_depth);
        setenv_str(es, envname,
                   format_hex_ex(BPTR(&sha1), BLEN(&sha1), 0, 1, ":", &gc));

        openvpn_snprintf(envname, sizeof(envname), "tls_digest_sha256_%d",
                         cert_depth);
        setenv_str(es, envname,
                   format_hex_ex(BPTR(&sha256), BLEN(&sha256), 0, 1, ":", &gc));
    }


    serial = backend_x509_get_serial(peer_cert, &gc);
    openvpn_snprintf(envname, sizeof(envname), "tls_serial_%d", cert_depth);
    setenv_str(es, envname, serial);


    serial = backend_x509_get_serial_hex(peer_cert, &gc);
    openvpn_snprintf(envname, sizeof(envname), "tls_serial_hex_%d", cert_depth);
    setenv_str(es, envname, serial);

    gc_free(&gc);
}
