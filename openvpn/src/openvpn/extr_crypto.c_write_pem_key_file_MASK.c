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
struct key {int /*<<< orphan*/  member_0; } ;
struct gc_arena {int dummy; } ;
struct buffer {int dummy; } ;
typedef  int /*<<< orphan*/  server_key ;

/* Variables and functions */
 char* FUNC0 (struct buffer*) ; 
 int /*<<< orphan*/  M_ERR ; 
 int /*<<< orphan*/  M_NONFATAL ; 
 int /*<<< orphan*/  M_WARN ; 
 int /*<<< orphan*/  FUNC1 (struct buffer*) ; 
 int /*<<< orphan*/  FUNC2 (struct buffer*,void*,int) ; 
 int /*<<< orphan*/  FUNC3 (char const*,struct buffer*) ; 
 struct buffer FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char const*,struct buffer*,struct buffer*,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC6 (struct gc_arena*) ; 
 struct gc_arena FUNC7 () ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 
 int /*<<< orphan*/  FUNC10 (void*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct key*,int) ; 
 scalar_t__ FUNC12 (char const*,char*) ; 

void
FUNC13(const char *filename, const char *pem_name)
{
    struct gc_arena gc = FUNC7();
    struct key server_key = { 0 };
    struct buffer server_key_buf = FUNC4();
    struct buffer server_key_pem = FUNC4();

    if (!FUNC10((void *)&server_key, sizeof(server_key)))
    {
        FUNC8(M_NONFATAL, "ERROR: could not generate random key");
        goto cleanup;
    }
    FUNC2(&server_key_buf, (void *)&server_key, sizeof(server_key));
    if (!FUNC5(pem_name, &server_key_pem,
                           &server_key_buf, &gc))
    {
        FUNC8(M_WARN, "ERROR: could not PEM-encode key");
        goto cleanup;
    }

    if (!filename || FUNC12(filename, "")==0)
    {
        FUNC9("%s\n", FUNC0(&server_key_pem));
    }
    else if (!FUNC3(filename, &server_key_pem))
    {
        FUNC8(M_ERR, "ERROR: could not write key file");
        goto cleanup;
    }

cleanup:
    FUNC11(&server_key, sizeof(server_key));
    FUNC1(&server_key_pem);
    FUNC6(&gc);
    return;
}