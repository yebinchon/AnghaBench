#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  str ;
typedef  int /*<<< orphan*/  buf ;
struct TYPE_3__ {int length; char* data; int max; } ;
typedef  TYPE_1__ BUF_MEM ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_FLAGS_MEM_RDONLY ; 
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (char*,int,char const*,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC9(void)
{
    int ok = 0;
    BIO *bio;
    BUF_MEM bufmem;
    static const char str[] = "BIO test\n";
    char buf[100];

    bio = FUNC1(FUNC3());
    if (!FUNC8(bio))
        goto finish;
    bufmem.length = sizeof(str);
    bufmem.data = (char *) str;
    bufmem.max = bufmem.length;
    FUNC5(bio, &bufmem, BIO_NOCLOSE);
    FUNC4(bio, BIO_FLAGS_MEM_RDONLY);
    if (!FUNC6(FUNC2(bio, buf, sizeof(buf)), sizeof(str)))
        goto finish;
    if (!FUNC7(buf, sizeof(str), str, sizeof(str)))
        goto finish;
    ok = 1;

finish:
    FUNC0(bio);
    return ok;
}