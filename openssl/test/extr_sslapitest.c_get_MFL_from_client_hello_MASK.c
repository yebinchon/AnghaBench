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
typedef  int /*<<< orphan*/  pkt3 ;
typedef  int /*<<< orphan*/  pkt2 ;
typedef  int /*<<< orphan*/  pkt ;
typedef  int /*<<< orphan*/  PACKET ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 long FUNC0 (int /*<<< orphan*/ *,char**) ; 
 scalar_t__ CLIENT_VERSION_LEN ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned char*,long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,unsigned int*) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *) ; 
 scalar_t__ SSL3_HM_HEADER_LENGTH ; 
 scalar_t__ SSL3_RANDOM_SIZE ; 
 scalar_t__ SSL3_RT_HEADER_LENGTH ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (long,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 unsigned int TLSEXT_TYPE_max_fragment_length ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC13(BIO *bio, int *mfl_codemfl_code)
{
    long len;
    unsigned char *data;
    PACKET pkt, pkt2, pkt3;
    unsigned int MFL_code = 0, type = 0;

    if (!FUNC10( len = FUNC0( bio, (char **) &data ), 0 ) )
        goto end;

    FUNC12(&pkt, 0, sizeof(pkt));
    FUNC12(&pkt2, 0, sizeof(pkt2));
    FUNC12(&pkt3, 0, sizeof(pkt3));

    if (!FUNC9( FUNC2( &pkt, data, len ) )
               /* Skip the record header */
            || !FUNC3(&pkt, SSL3_RT_HEADER_LENGTH)
               /* Skip the handshake message header */
            || !FUNC9(FUNC3(&pkt, SSL3_HM_HEADER_LENGTH))
               /* Skip client version and random */
            || !FUNC9(FUNC3(&pkt, CLIENT_VERSION_LEN
                                               + SSL3_RANDOM_SIZE))
               /* Skip session id */
            || !FUNC9(FUNC5(&pkt, &pkt2))
               /* Skip ciphers */
            || !FUNC9(FUNC6(&pkt, &pkt2))
               /* Skip compression */
            || !FUNC9(FUNC5(&pkt, &pkt2))
               /* Extensions len */
            || !FUNC9(FUNC1(&pkt, &pkt2)))
        goto end;

    /* Loop through all extensions */
    while (FUNC8(&pkt2)) {
        if (!FUNC9(FUNC7(&pkt2, &type))
                || !FUNC9(FUNC6(&pkt2, &pkt3)))
            goto end;

        if (type == TLSEXT_TYPE_max_fragment_length) {
            if (!FUNC11(FUNC8(&pkt3), 0)
                    || !FUNC9(FUNC4(&pkt3, &MFL_code)))
                goto end;

            *mfl_codemfl_code = MFL_code;
            return 1;
        }
    }

 end:
    return 0;
}