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
typedef  int /*<<< orphan*/  DES_key_schedule ;
typedef  int /*<<< orphan*/  DES_cblock ;

/* Variables and functions */
 int DATA_BUF_SIZE ; 
 int /*<<< orphan*/  DES_DECRYPT ; 
 int /*<<< orphan*/  DES_ENCRYPT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * cipher_ecb2 ; 
 int /*<<< orphan*/ * key_data ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * plain_data ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static int FUNC7(int i)
{
    DES_cblock in, out, outin;
    DES_key_schedule ks, ks2, ks3;
    char b1[DATA_BUF_SIZE], b2[DATA_BUF_SIZE];

    FUNC1(&key_data[i], &ks);
    FUNC1(&key_data[i + 1], &ks2);
    FUNC1(&key_data[i + 2], &ks3);
    FUNC4(in, plain_data[i], 8);
    FUNC5(out, 0, 8);
    FUNC5(outin, 0, 8);
    FUNC0(&in, &out, &ks, &ks2, &ks, DES_ENCRYPT);
    FUNC0(&out, &outin, &ks, &ks2, &ks, DES_DECRYPT);

    if (!FUNC3(out, 8, cipher_ecb2[i], 8)) {
        FUNC2("Encryption error %2d k=%s p=%s", i + 1,
                  FUNC6(key_data[i], b1), FUNC6(in, b2));
        return 0;
    }
    if (!FUNC3(in, 8, outin, 8)) {
        FUNC2("Decryption error %2d k=%s p=%s ", i + 1,
                  FUNC6(key_data[i], b1), FUNC6(out, b2));
        return 0;
    }
    return 1;
}