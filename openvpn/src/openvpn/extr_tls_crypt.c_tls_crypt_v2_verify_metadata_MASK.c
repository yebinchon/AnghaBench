#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
struct buffer {int dummy; } ;
struct tls_wrap_ctx {struct buffer tls_crypt_v2_metadata; } ;
struct tls_options {int /*<<< orphan*/  tls_crypt_v2_verify_script; int /*<<< orphan*/  tmp_dir; } ;
struct gc_arena {int dummy; } ;
struct env_set {int dummy; } ;
struct argv {int dummy; } ;
typedef  int /*<<< orphan*/  metadata_type_str ;

/* Variables and functions */
 int /*<<< orphan*/  D_HANDSHAKE ; 
 int /*<<< orphan*/  D_TLS_DEBUG ; 
 int /*<<< orphan*/  M_WARN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,struct argv*,char*) ; 
 struct argv FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 (struct argv*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (struct argv*) ; 
 int FUNC4 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC5 (char const*,struct buffer*) ; 
 struct env_set* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct env_set*) ; 
 int /*<<< orphan*/  FUNC8 (struct gc_arena*) ; 
 struct gc_arena FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*,...) ; 
 int FUNC11 (struct argv*,struct env_set*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (char*,int,char*,int) ; 
 char* FUNC13 (int /*<<< orphan*/ ,char*,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC14 (char const*) ; 
 int /*<<< orphan*/  FUNC15 (struct env_set*,char*,char const*) ; 

__attribute__((used)) static bool
FUNC16(const struct tls_wrap_ctx *ctx,
                             const struct tls_options *opt)
{
    bool ret = false;
    struct gc_arena gc = FUNC9();
    const char *tmp_file = NULL;
    struct buffer metadata = ctx->tls_crypt_v2_metadata;
    int metadata_type = FUNC4(&metadata);
    if (metadata_type < 0)
    {
        FUNC10(M_WARN, "ERROR: no metadata type");
        goto cleanup;
    }

    tmp_file = FUNC13(opt->tmp_dir, "tls_crypt_v2_metadata_",
                                         &gc);
    if (!tmp_file || !FUNC5(tmp_file, &metadata))
    {
        FUNC10(M_WARN, "ERROR: could not write metadata to file");
        goto cleanup;
    }

    char metadata_type_str[4] = { 0 }; /* Max value: 255 */
    FUNC12(metadata_type_str, sizeof(metadata_type_str),
                     "%i", metadata_type);
    struct env_set *es = FUNC6(NULL);
    FUNC15(es, "script_type", "tls-crypt-v2-verify");
    FUNC15(es, "metadata_type", metadata_type_str);
    FUNC15(es, "metadata_file", tmp_file);

    struct argv argv = FUNC1();
    FUNC2(&argv, opt->tls_crypt_v2_verify_script);
    FUNC0(D_TLS_DEBUG, &argv, "Executing tls-crypt-v2-verify");

    ret = FUNC11(&argv, es, 0, "--tls-crypt-v2-verify");

    FUNC3(&argv);
    FUNC7(es);

    if (!FUNC14(tmp_file))
    {
        FUNC10(M_WARN, "WARNING: failed to remove temp file '%s", tmp_file);
    }

    if (ret)
    {
        FUNC10(D_HANDSHAKE, "TLS CRYPT V2 VERIFY SCRIPT OK");
    }
    else
    {
        FUNC10(D_HANDSHAKE, "TLS CRYPT V2 VERIFY SCRIPT ERROR");
    }

cleanup:
    FUNC8(&gc);
    return ret;
}