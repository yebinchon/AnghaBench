
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct options {int management_flags; int ssl_flags; int tmp_dir; int chroot_dir; int client_config_dir; int tls_export_cert; int status_file; int writepid; int auth_user_pass_file; int management_user_pass; int key_pass_file; int packet_id_file; int shared_secret_file; int genkey_filename; TYPE_1__* connection_list; int crl_file; int pkcs12_file; int priv_key_file; int extra_certs_file; int cert_file; int ca_path; int ca_file; int dh_file; } ;
struct connection_entry {int tls_crypt_v2_file; int tls_crypt_file; int tls_auth_file; } ;
struct TYPE_2__ {int len; struct connection_entry** array; } ;


 int ASSERT (TYPE_1__*) ;
 int CHKACC_ACPTSTDIN ;
 int CHKACC_DIRPATH ;
 int CHKACC_FILE ;
 int CHKACC_FILEXSTWR ;
 int CHKACC_INLINE ;
 int CHKACC_PRIVATE ;
 int MF_EXTERNAL_KEY ;
 int M_USAGE ;
 int R_OK ;
 int SSLF_CRL_VERIFY_DIR ;
 int W_OK ;
 int X_OK ;
 int check_file_access (int,int ,int,char*) ;
 int check_file_access_chroot (int ,int,int ,int,char*) ;
 int msg (int ,char*) ;

__attribute__((used)) static void
options_postprocess_filechecks(struct options *options)
{
    bool errs = 0;


    errs |= check_file_access(CHKACC_FILE|CHKACC_INLINE, options->dh_file, R_OK, "--dh");
    errs |= check_file_access(CHKACC_FILE|CHKACC_INLINE, options->ca_file, R_OK, "--ca");
    errs |= check_file_access_chroot(options->chroot_dir, CHKACC_FILE, options->ca_path, R_OK, "--capath");
    errs |= check_file_access(CHKACC_FILE|CHKACC_INLINE, options->cert_file, R_OK, "--cert");
    errs |= check_file_access(CHKACC_FILE|CHKACC_INLINE, options->extra_certs_file, R_OK,
                              "--extra-certs");



    {
        errs |= check_file_access(CHKACC_FILE|CHKACC_INLINE|CHKACC_PRIVATE,
                                  options->priv_key_file, R_OK, "--key");
    }
    errs |= check_file_access(CHKACC_FILE|CHKACC_INLINE|CHKACC_PRIVATE,
                              options->pkcs12_file, R_OK, "--pkcs12");

    if (options->ssl_flags & SSLF_CRL_VERIFY_DIR)
    {
        errs |= check_file_access_chroot(options->chroot_dir, CHKACC_FILE, options->crl_file, R_OK|X_OK,
                                         "--crl-verify directory");
    }
    else
    {
        errs |= check_file_access_chroot(options->chroot_dir, CHKACC_FILE|CHKACC_INLINE,
                                         options->crl_file, R_OK, "--crl-verify");
    }

    ASSERT(options->connection_list);
    for (int i = 0; i < options->connection_list->len; ++i)
    {
        struct connection_entry *ce = options->connection_list->array[i];

        errs |= check_file_access(CHKACC_FILE|CHKACC_INLINE|CHKACC_PRIVATE,
                                  ce->tls_auth_file, R_OK, "--tls-auth");

        errs |= check_file_access(CHKACC_FILE|CHKACC_INLINE|CHKACC_PRIVATE,
                                  ce->tls_crypt_file, R_OK, "--tls-crypt");

        errs |= check_file_access(CHKACC_FILE|CHKACC_INLINE|CHKACC_PRIVATE,
                                  ce->tls_crypt_v2_file, R_OK,
                                  "--tls-crypt-v2");
    }

    errs |= check_file_access(CHKACC_FILE|CHKACC_INLINE|CHKACC_PRIVATE,
                              options->genkey_filename, R_OK,
                              "--genkey");
    errs |= check_file_access(CHKACC_FILE|CHKACC_INLINE|CHKACC_PRIVATE,
                              options->shared_secret_file, R_OK, "--secret");

    errs |= check_file_access(CHKACC_DIRPATH|CHKACC_FILEXSTWR,
                              options->packet_id_file, R_OK|W_OK, "--replay-persist");


    errs |= check_file_access(CHKACC_FILE|CHKACC_ACPTSTDIN|CHKACC_PRIVATE,
                              options->key_pass_file, R_OK, "--askpass");
    errs |= check_file_access(CHKACC_FILE, options->chroot_dir,
                              R_OK|X_OK, "--chroot directory");
    errs |= check_file_access(CHKACC_DIRPATH|CHKACC_FILEXSTWR, options->writepid,
                              R_OK|W_OK, "--writepid");


    errs |= check_file_access(CHKACC_DIRPATH|CHKACC_FILEXSTWR, options->status_file,
                              R_OK|W_OK, "--status");


    errs |= check_file_access_chroot(options->chroot_dir, CHKACC_FILE, options->tls_export_cert,
                                     R_OK|W_OK|X_OK, "--tls-export-cert");
    if (errs)
    {
        msg(M_USAGE, "Please correct these errors.");
    }
}
