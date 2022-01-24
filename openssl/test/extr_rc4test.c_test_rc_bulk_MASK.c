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
typedef  int /*<<< orphan*/  md ;
typedef  int /*<<< orphan*/  expected ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  SHA_CTX ;
typedef  int /*<<< orphan*/  RC4_KEY ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,unsigned char*,unsigned char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,unsigned char*,int) ; 
 int SHA_DIGEST_LENGTH ; 
 int FUNC5 (unsigned char*,int,unsigned char*,int) ; 
 int /*<<< orphan*/ ** keys ; 
 int /*<<< orphan*/  FUNC6 (unsigned char*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC7(void)
{
    RC4_KEY key;
    unsigned char buf[513];
    SHA_CTX c;
    unsigned char md[SHA_DIGEST_LENGTH];
    int i;
    static unsigned char expected[] = {
        0xa4, 0x7b, 0xcc, 0x00, 0x3d, 0xd0, 0xbd, 0xe1, 0xac, 0x5f,
        0x12, 0x1e, 0x45, 0xbc, 0xfb, 0x1a, 0xa1, 0xf2, 0x7f, 0xc5
    };

    FUNC1(&key, keys[0][0], &(keys[3][1]));
    FUNC6(buf, 0, sizeof(buf));
    FUNC3(&c);
    for (i = 0; i < 2571; i++) {
        FUNC0(&key, sizeof(buf), buf, buf);
        FUNC4(&c, buf, sizeof(buf));
    }
    FUNC2(md, &c);

    return FUNC5(md, sizeof(md), expected, sizeof(expected));
}