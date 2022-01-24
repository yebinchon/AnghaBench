#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8 ;
typedef  scalar_t__ uint32 ;
typedef  int uint16 ;
struct TYPE_10__ {int /*<<< orphan*/ * p; int /*<<< orphan*/ * end; } ;
typedef  TYPE_1__* STREAM ;
typedef  int /*<<< orphan*/  RD_BOOL ;
typedef  int /*<<< orphan*/ * PCCERT_CONTEXT ;
typedef  int /*<<< orphan*/  BYTE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  False ; 
 int /*<<< orphan*/  SEC_EXPONENT_SIZE ; 
 int SEC_MAX_MODULUS_SIZE ; 
 int SEC_MODULUS_SIZE ; 
 scalar_t__ SEC_RANDOM_SIZE ; 
#define  SEC_TAG_KEYSIG 129 
#define  SEC_TAG_PUBKEY 128 
 int /*<<< orphan*/  True ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 
 int g_server_public_key_len ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stdout ; 
 int /*<<< orphan*/  FUNC16 (char*,int) ; 

__attribute__((used)) static RD_BOOL
FUNC17(STREAM s, uint32 * rc4_key_size,
		     uint8 ** server_random, uint8 * modulus, uint8 * exponent)
{
	uint32 crypt_level, random_len, rsa_info_len;
	uint32 cacert_len, cert_len, flags;
    PCCERT_CONTEXT cacert, server_cert;
	BYTE *server_public_key;
	uint16 tag, length;
	uint8 *next_tag, *end;

	FUNC3(s, *rc4_key_size);	/* 1 = 40-bit, 2 = 128-bit */
	FUNC3(s, crypt_level);	/* 1 = low, 2 = medium, 3 = high */
	if (crypt_level == 0)
	{
		/* no encryption */
		return False;
	}

	FUNC3(s, random_len);
	FUNC3(s, rsa_info_len);

	if (random_len != SEC_RANDOM_SIZE)
	{
		FUNC1("random len %d, expected %d\n", random_len, SEC_RANDOM_SIZE);
		return False;
	}

	FUNC4(s, *server_random, random_len);

	/* RSA info */
	end = s->p + rsa_info_len;
	if (end > s->end)
		return False;

	FUNC3(s, flags);	/* 1 = RDP4-style, 0x80000002 = X.509 */
	if (flags & 1)
	{
		FUNC0(("We're going for the RDP4-style encryption\n"));
		FUNC5(s, 8);	/* unknown */

		while (s->p < end)
		{
			FUNC2(s, tag);
			FUNC2(s, length);

			next_tag = s->p + length;

			switch (tag)
			{
				case SEC_TAG_PUBKEY:
					if (!FUNC14(s, modulus, exponent))
						return False;
					FUNC0(("Got Public key, RDP4-style\n"));

					break;

				case SEC_TAG_KEYSIG:
					if (!FUNC15(s, length, modulus, exponent))
						return False;
					break;

				default:
					FUNC16("crypt tag 0x%x\n", tag);
			}

			s->p = next_tag;
		}
	}
	else
	{
		uint32 certcount;

		FUNC0(("We're going for the RDP5-style encryption\n"));
		FUNC3(s, certcount);	/* Number of certificates */
		if (certcount < 2)
		{
			FUNC1("Server didn't send enough X509 certificates\n");
			return False;
		}
		for (; certcount > 2; certcount--)
		{		/* ignore all the certificates between the root and the signing CA */
			uint32 ignorelen;
            PCCERT_CONTEXT ignorecert;

			FUNC0(("Ignored certs left: %d\n", certcount));
			FUNC3(s, ignorelen);
			FUNC0(("Ignored Certificate length is %d\n", ignorelen));
			ignorecert = FUNC8(s->p, ignorelen);
			FUNC5(s, ignorelen);
			if (ignorecert == NULL)
			{	/* XXX: error out? */
				FUNC0(("got a bad cert: this will probably screw up the rest of the communication\n"));
			}

#ifdef WITH_DEBUG_RDP5
			DEBUG_RDP5(("cert #%d (ignored):\n", certcount));
			rdssl_cert_print_fp(stdout, ignorecert);
#endif
		}
		/* Do da funky X.509 stuffy

		   "How did I find out about this?  I looked up and saw a
		   bright light and when I came to I had a scar on my forehead
		   and knew about X.500"
		   - Peter Gutman in a early version of 
		   http://www.cs.auckland.ac.nz/~pgut001/pubs/x509guide.txt
		 */
		FUNC3(s, cacert_len);
		FUNC0(("CA Certificate length is %d\n", cacert_len));
		cacert = FUNC8(s->p, cacert_len);
		FUNC5(s, cacert_len);
		if (NULL == cacert)
		{
			FUNC1("Couldn't load CA Certificate from server\n");
			return False;
		}
		FUNC3(s, cert_len);
		FUNC0(("Certificate length is %d\n", cert_len));
		server_cert = FUNC8(s->p, cert_len);
		FUNC5(s, cert_len);
		if (NULL == server_cert)
		{
			FUNC6(cacert);
			FUNC1("Couldn't load Certificate from server\n");
			return False;
		}
		if (!FUNC10(server_cert, cacert))
		{
			FUNC6(server_cert);
			FUNC6(cacert);
			FUNC1("Security error CA Certificate invalid\n");
			return False;
		}
		FUNC6(cacert);
		FUNC5(s, 16);	/* Padding */
		server_public_key = FUNC9(server_cert, &g_server_public_key_len);
		if (NULL == server_public_key)
		{
			FUNC0(("Didn't parse X509 correctly\n"));
			FUNC6(server_cert);
			return False;
		}
		FUNC6(server_cert);
		if ((g_server_public_key_len < SEC_MODULUS_SIZE) ||
		    (g_server_public_key_len > SEC_MAX_MODULUS_SIZE))
		{
			FUNC1("Bad server public key size (%u bits)\n",
			      g_server_public_key_len * 8);
			FUNC11(server_public_key);
			return False;
		}
		if (FUNC12(server_public_key, exponent, SEC_EXPONENT_SIZE,
					   modulus, SEC_MAX_MODULUS_SIZE) != 0)
		{
			FUNC1("Problem extracting RSA exponent, modulus");
			FUNC11(server_public_key);
			return False;
		}
		FUNC11(server_public_key);
		return True;	/* There's some garbage here we don't care about */
	}
	return FUNC13(s);
}