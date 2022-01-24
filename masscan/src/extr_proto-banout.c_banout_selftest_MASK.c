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
struct BannerOutput {scalar_t__ next; } ;
struct BannerBase64 {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct BannerOutput*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct BannerOutput*,int,char*,int,struct BannerBase64*) ; 
 int /*<<< orphan*/  FUNC2 (struct BannerOutput*,int,struct BannerBase64*) ; 
 int /*<<< orphan*/  FUNC3 (struct BannerOutput*) ; 
 int /*<<< orphan*/  FUNC4 (struct BannerBase64*) ; 
 int /*<<< orphan*/  FUNC5 (struct BannerOutput*) ; 
 int /*<<< orphan*/  FUNC6 (struct BannerOutput*,int,char*) ; 
 int FUNC7 (struct BannerOutput*,int) ; 

int
FUNC8(void)
{
    /*
     * Basic test
     */
    {
        struct BannerOutput banout[1];
        unsigned i;
        
        FUNC3(banout);
        
        for (i=0; i<10; i++) {
            FUNC0(banout, 1, "xxxx", 4);
            FUNC0(banout, 2, "yyyyy", 5);
        }
        
        if (banout->next == 0)
            return 1;
        if (FUNC7(banout, 1) != 40)
            return 1;
        if (FUNC7(banout, 2) != 50)
            return 1;
        
        FUNC5(banout);
        if (banout->next != 0)
            return 1;
    }
    
    /*
     * Test BASE64 encoding. We are going to do strings of various lengths
     * in order to test the boundary condition of finalizing various strings
     * properly
     */
    {
        struct BannerOutput banout[1];
        struct BannerBase64 base64[1];
    
        FUNC3(banout);

        FUNC4(base64);
        FUNC1(banout, 1, "x", 1, base64);
        FUNC2(banout, 1, base64);
        
        FUNC4(base64);
        FUNC1(banout, 2, "bc", 2, base64);
        FUNC2(banout, 2, base64);
        
        FUNC4(base64);
        FUNC1(banout, 3, "mno", 3, base64);
        FUNC2(banout, 3, base64);
        
        FUNC4(base64);
        FUNC1(banout, 4, "stuv", 4, base64);
        FUNC2(banout, 4, base64);
        
        FUNC4(base64);
        FUNC1(banout, 5, "fghij", 5, base64);
        FUNC2(banout, 5, base64);
        
        
        if (!FUNC6(banout, 1, "eA=="))
            return 1;
        if (!FUNC6(banout, 2, "YmM="))
            return 1;
        if (!FUNC6(banout, 3, "bW5v"))
            return 1;
        if (!FUNC6(banout, 4, "c3R1dg=="))
            return 1;
        if (!FUNC6(banout, 5, "ZmdoaWo="))
            return 1;

        FUNC5(banout);
    }
    
    
    return 0;
}