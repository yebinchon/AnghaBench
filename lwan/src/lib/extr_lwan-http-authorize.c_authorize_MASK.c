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
struct realm_password_file_t {int /*<<< orphan*/  entries; } ;
struct coro {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int) ; 
 unsigned char* FUNC1 (unsigned char*,size_t,size_t*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct coro*,char const*) ; 
 int /*<<< orphan*/  FUNC3 (unsigned char*) ; 
 char* FUNC4 (int /*<<< orphan*/ ,unsigned char*) ; 
 char* FUNC5 (unsigned char*,char,size_t) ; 
 int /*<<< orphan*/  realm_password_cache ; 
 int FUNC6 (char*,char*) ; 

__attribute__((used)) static bool FUNC7(struct coro *coro,
                      const char *header,
                      size_t header_len,
                      const char *password_file)
{
    struct realm_password_file_t *rpf;
    unsigned char *decoded;
    char *colon;
    char *password;
    char *looked_password;
    size_t decoded_len;
    bool password_ok = false;

    rpf = (struct realm_password_file_t *)FUNC2(
        realm_password_cache, coro, password_file);
    if (FUNC0(!rpf))
        return false;

    decoded = FUNC1((unsigned char *)header, header_len, &decoded_len);
    if (FUNC0(!decoded))
        return false;

    colon = FUNC5(decoded, ':', decoded_len);
    if (FUNC0(!colon))
        goto out;

    *colon = '\0';
    password = colon + 1;

    looked_password = FUNC4(rpf->entries, decoded);
    if (looked_password)
        password_ok = FUNC6(password, looked_password);

out:
    FUNC3(decoded);
    return password_ok;
}