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
typedef  int /*<<< orphan*/  LZ4F_dctx ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  IN_CHUNK_SIZE ; 
 int /*<<< orphan*/  LZ4F_VERSION ; 
 size_t FUNC0 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 char* FUNC2 (size_t const) ; 
 scalar_t__ FUNC3 (size_t const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,void* const,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void* const) ; 
 void* FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*) ; 

__attribute__((used)) static int FUNC10(FILE* f_in, FILE* f_out)
{
    FUNC4(f_in != NULL); FUNC4(f_out != NULL);

    /* Ressource allocation */
    void* const src = FUNC7(IN_CHUNK_SIZE);
    if (!src) { FUNC8("decompress_file(src)"); return 1; }

    LZ4F_dctx* dctx;
    {   size_t const dctxStatus = FUNC0(&dctx, LZ4F_VERSION);
        if (FUNC3(dctxStatus)) {
            FUNC9("LZ4F_dctx creation error: %s\n", FUNC2(dctxStatus));
    }   }

    int const result = !dctx ? 1 /* error */ :
                       FUNC5(f_in, f_out, dctx, src, IN_CHUNK_SIZE);

    FUNC6(src);
    FUNC1(dctx);   /* note : free works on NULL */
    return result;
}