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
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 unsigned int FUNC0 (int /*<<< orphan*/ *,unsigned char*,unsigned int) ; 
 int /*<<< orphan*/ * clientpsk ; 
 int psk_client_cb_cnt ; 
 int /*<<< orphan*/  pskid ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,unsigned int) ; 

__attribute__((used)) static unsigned int FUNC3(SSL *ssl, const char *hint, char *id,
                                  unsigned int max_id_len,
                                  unsigned char *psk,
                                  unsigned int max_psk_len)
{
    unsigned int psklen = 0;

    psk_client_cb_cnt++;

    if (FUNC1(pskid) + 1 > max_id_len)
        return 0;

    /* We should only ever be called a maximum of twice per connection */
    if (psk_client_cb_cnt > 2)
        return 0;

    if (clientpsk == NULL)
        return 0;

    /* We'll reuse the PSK we set up for TLSv1.3 */
    if (FUNC0(clientpsk, NULL, 0) > max_psk_len)
        return 0;
    psklen = FUNC0(clientpsk, psk, max_psk_len);
    FUNC2(id, pskid, max_id_len);

    return psklen;
}