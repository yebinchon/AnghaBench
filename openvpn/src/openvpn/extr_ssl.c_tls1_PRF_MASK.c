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
typedef  int /*<<< orphan*/  uint8_t ;
struct gc_arena {int dummy; } ;
typedef  int /*<<< orphan*/  md_kt_t ;

/* Variables and functions */
 int /*<<< orphan*/  D_SHOW_KEY_SOURCE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,struct gc_arena*) ; 
 int /*<<< orphan*/  FUNC2 (struct gc_arena*) ; 
 scalar_t__ FUNC3 (int,int,struct gc_arena*) ; 
 struct gc_arena FUNC4 () ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int,int /*<<< orphan*/  const*,int,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void
FUNC8(const uint8_t *label,
         int label_len,
         const uint8_t *sec,
         int slen,
         uint8_t *out1,
         int olen)
{
    struct gc_arena gc = FUNC4();
    const md_kt_t *md5 = FUNC5("MD5");
    const md_kt_t *sha1 = FUNC5("SHA1");
    int len,i;
    const uint8_t *S1,*S2;
    uint8_t *out2;

    out2 = (uint8_t *) FUNC3(olen, false, &gc);

    len = slen/2;
    S1 = sec;
    S2 = &(sec[len]);
    len += (slen&1); /* add for odd, make longer */

    FUNC7(md5,S1,len,label,label_len,out1,olen);
    FUNC7(sha1,S2,len,label,label_len,out2,olen);

    for (i = 0; i<olen; i++)
    {
        out1[i] ^= out2[i];
    }

    FUNC6(out2, olen);

    FUNC0(D_SHOW_KEY_SOURCE, "tls1_PRF out[%d]: %s", olen, FUNC1(out1, olen, 0, &gc));

    FUNC2(&gc);
}