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
typedef  char uint8_t ;
struct session_id {char const* id; } ;
struct buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*) ; 
 int SID_SIZE ; 
 int /*<<< orphan*/  FUNC3 (void*,int) ; 
 struct buffer FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC6 (struct buffer*,char const*,int) ; 
 int /*<<< orphan*/  FUNC7 (struct buffer*) ; 
 int FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,char*,int) ; 

__attribute__((used)) static void
FUNC10(const uint8_t *secret,
            int secret_len,
            const char *label,
            const uint8_t *client_seed,
            int client_seed_len,
            const uint8_t *server_seed,
            int server_seed_len,
            const struct session_id *client_sid,
            const struct session_id *server_sid,
            uint8_t *output,
            int output_len)
{
    /* concatenate seed components */

    struct buffer seed = FUNC4(FUNC8(label)
                                   + client_seed_len
                                   + server_seed_len
                                   + SID_SIZE * 2);

    FUNC0(FUNC6(&seed, label, FUNC8(label)));
    FUNC0(FUNC6(&seed, client_seed, client_seed_len));
    FUNC0(FUNC6(&seed, server_seed, server_seed_len));

    if (client_sid)
    {
        FUNC0(FUNC6(&seed, client_sid->id, SID_SIZE));
    }
    if (server_sid)
    {
        FUNC0(FUNC6(&seed, server_sid->id, SID_SIZE));
    }

    /* compute PRF */
    FUNC9(FUNC2(&seed), FUNC1(&seed), secret, secret_len, output, output_len);

    FUNC5(&seed);
    FUNC7(&seed);

    FUNC3((void *)output, output_len);
}