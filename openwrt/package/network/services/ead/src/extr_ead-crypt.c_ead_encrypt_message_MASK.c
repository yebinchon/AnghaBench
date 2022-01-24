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
typedef  int uint32_t ;
struct ead_msg_encrypted {unsigned int pad; void** hash; void* iv; } ;
struct ead_msg {void* len; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,void*,int) ; 
 struct ead_msg_encrypted* FUNC1 (struct ead_msg*,int /*<<< orphan*/ ) ; 
 unsigned int EAD_ENC_PAD ; 
 int /*<<< orphan*/  aes_enc_ctx ; 
 int FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (struct ead_msg_encrypted*,int*,int) ; 
 struct ead_msg_encrypted* enc ; 
 void* FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,unsigned char*,unsigned char*) ; 

void
FUNC6(struct ead_msg *msg, unsigned int len)
{
	struct ead_msg_encrypted *enc = FUNC1(msg, enc);
	unsigned char *data = (unsigned char *) enc;
	uint32_t hash[5];
	int enclen, i;

	len += sizeof(struct ead_msg_encrypted);
	enc->pad = (EAD_ENC_PAD - (len % EAD_ENC_PAD)) % EAD_ENC_PAD;
	enclen = len + enc->pad;
	msg->len = FUNC4(enclen);
	enc->iv = FUNC4(FUNC2());

	FUNC3(enc, hash, enclen);
	for (i = 0; i < 5; i++)
		enc->hash[i] = FUNC4(hash[i]);
	FUNC0(2, "SHA1 generate (0x%08x), len=%d\n", enc->hash[0], enclen);

	while (enclen > 0) {
		FUNC5(aes_enc_ctx, data, data);
		data += 16;
		enclen -= 16;
	}
}