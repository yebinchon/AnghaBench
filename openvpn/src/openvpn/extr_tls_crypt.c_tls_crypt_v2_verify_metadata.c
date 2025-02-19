
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct buffer {int dummy; } ;
struct tls_wrap_ctx {struct buffer tls_crypt_v2_metadata; } ;
struct tls_options {int tls_crypt_v2_verify_script; int tmp_dir; } ;
struct gc_arena {int dummy; } ;
struct env_set {int dummy; } ;
struct argv {int dummy; } ;
typedef int metadata_type_str ;


 int D_HANDSHAKE ;
 int D_TLS_DEBUG ;
 int M_WARN ;
 int argv_msg_prefix (int ,struct argv*,char*) ;
 struct argv argv_new () ;
 int argv_parse_cmd (struct argv*,int ) ;
 int argv_reset (struct argv*) ;
 int buf_read_u8 (struct buffer*) ;
 int buffer_write_file (char const*,struct buffer*) ;
 struct env_set* env_set_create (int *) ;
 int env_set_destroy (struct env_set*) ;
 int gc_free (struct gc_arena*) ;
 struct gc_arena gc_new () ;
 int msg (int ,char*,...) ;
 int openvpn_run_script (struct argv*,struct env_set*,int ,char*) ;
 int openvpn_snprintf (char*,int,char*,int) ;
 char* platform_create_temp_file (int ,char*,struct gc_arena*) ;
 int platform_unlink (char const*) ;
 int setenv_str (struct env_set*,char*,char const*) ;

__attribute__((used)) static bool
tls_crypt_v2_verify_metadata(const struct tls_wrap_ctx *ctx,
                             const struct tls_options *opt)
{
    bool ret = 0;
    struct gc_arena gc = gc_new();
    const char *tmp_file = ((void*)0);
    struct buffer metadata = ctx->tls_crypt_v2_metadata;
    int metadata_type = buf_read_u8(&metadata);
    if (metadata_type < 0)
    {
        msg(M_WARN, "ERROR: no metadata type");
        goto cleanup;
    }

    tmp_file = platform_create_temp_file(opt->tmp_dir, "tls_crypt_v2_metadata_",
                                         &gc);
    if (!tmp_file || !buffer_write_file(tmp_file, &metadata))
    {
        msg(M_WARN, "ERROR: could not write metadata to file");
        goto cleanup;
    }

    char metadata_type_str[4] = { 0 };
    openvpn_snprintf(metadata_type_str, sizeof(metadata_type_str),
                     "%i", metadata_type);
    struct env_set *es = env_set_create(((void*)0));
    setenv_str(es, "script_type", "tls-crypt-v2-verify");
    setenv_str(es, "metadata_type", metadata_type_str);
    setenv_str(es, "metadata_file", tmp_file);

    struct argv argv = argv_new();
    argv_parse_cmd(&argv, opt->tls_crypt_v2_verify_script);
    argv_msg_prefix(D_TLS_DEBUG, &argv, "Executing tls-crypt-v2-verify");

    ret = openvpn_run_script(&argv, es, 0, "--tls-crypt-v2-verify");

    argv_reset(&argv);
    env_set_destroy(es);

    if (!platform_unlink(tmp_file))
    {
        msg(M_WARN, "WARNING: failed to remove temp file '%s", tmp_file);
    }

    if (ret)
    {
        msg(D_HANDSHAKE, "TLS CRYPT V2 VERIFY SCRIPT OK");
    }
    else
    {
        msg(D_HANDSHAKE, "TLS CRYPT V2 VERIFY SCRIPT ERROR");
    }

cleanup:
    gc_free(&gc);
    return ret;
}
