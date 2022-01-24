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
struct x509_track {int dummy; } ;
struct gc_arena {int dummy; } ;
struct env_set {int dummy; } ;
struct buffer {int dummy; } ;
typedef  int /*<<< orphan*/  openvpn_x509_cert_t ;
typedef  int /*<<< orphan*/  envname ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*) ; 
 char* FUNC2 (int /*<<< orphan*/ *,struct gc_arena*) ; 
 char* FUNC3 (int /*<<< orphan*/ *,struct gc_arena*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,char*,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC5 (struct gc_arena*) ; 
 struct gc_arena FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct env_set*,char*,char const*) ; 
 struct buffer FUNC9 (int /*<<< orphan*/ *,struct gc_arena*) ; 
 struct buffer FUNC10 (int /*<<< orphan*/ *,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC11 (struct env_set*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct x509_track const*,struct env_set*,int,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC13(struct env_set *es, openvpn_x509_cert_t *peer_cert, int cert_depth,
                    const char *subject, const char *common_name,
                    const struct x509_track *x509_track)
{
    char envname[64];
    char *serial = NULL;
    struct gc_arena gc = FUNC6();

    /* Save X509 fields in environment */
    if (x509_track)
    {
        FUNC12(x509_track, es, cert_depth, peer_cert);
    }
    else
    {
        FUNC11(es, cert_depth, peer_cert);
    }

    /* export subject name string as environmental variable */
    FUNC7(envname, sizeof(envname), "tls_id_%d", cert_depth);
    FUNC8(es, envname, subject);

#if 0
    /* export common name string as environmental variable */
    openvpn_snprintf(envname, sizeof(envname), "tls_common_name_%d", cert_depth);
    setenv_str(es, envname, common_name);
#endif

    /* export X509 cert fingerprints */
    {
        struct buffer sha1 = FUNC9(peer_cert, &gc);
        struct buffer sha256 = FUNC10(peer_cert, &gc);

        FUNC7(envname, sizeof(envname), "tls_digest_%d", cert_depth);
        FUNC8(es, envname,
                   FUNC4(FUNC1(&sha1), FUNC0(&sha1), 0, 1, ":", &gc));

        FUNC7(envname, sizeof(envname), "tls_digest_sha256_%d",
                         cert_depth);
        FUNC8(es, envname,
                   FUNC4(FUNC1(&sha256), FUNC0(&sha256), 0, 1, ":", &gc));
    }

    /* export serial number as environmental variable */
    serial = FUNC2(peer_cert, &gc);
    FUNC7(envname, sizeof(envname), "tls_serial_%d", cert_depth);
    FUNC8(es, envname, serial);

    /* export serial number in hex as environmental variable */
    serial = FUNC3(peer_cert, &gc);
    FUNC7(envname, sizeof(envname), "tls_serial_hex_%d", cert_depth);
    FUNC8(es, envname, serial);

    FUNC5(&gc);
}