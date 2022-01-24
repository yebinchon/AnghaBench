#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int member_0; int /*<<< orphan*/  member_2; int /*<<< orphan*/  member_1; } ;
typedef  TYPE_1__ compressResult_t ;
typedef  int /*<<< orphan*/  LZ4F_compressionContext_t ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 size_t const IN_CHUNK_SIZE ; 
 int /*<<< orphan*/  LZ4F_VERSION ; 
 size_t FUNC0 (size_t const,int /*<<< orphan*/ *) ; 
 size_t FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (size_t const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 TYPE_1__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,void* const,size_t const,void* const,size_t const) ; 
 int /*<<< orphan*/  FUNC6 (void* const) ; 
 int /*<<< orphan*/  kPrefs ; 
 void* FUNC7 (size_t const) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static compressResult_t
FUNC9(FILE* f_in, FILE* f_out)
{
    FUNC4(f_in != NULL);
    FUNC4(f_out != NULL);

    /* ressource allocation */
    LZ4F_compressionContext_t ctx;
    size_t const ctxCreation = FUNC1(&ctx, LZ4F_VERSION);
    void* const src = FUNC7(IN_CHUNK_SIZE);
    size_t const outbufCapacity = FUNC0(IN_CHUNK_SIZE, &kPrefs);   /* large enough for any input <= IN_CHUNK_SIZE */
    void* const outbuff = FUNC7(outbufCapacity);

    compressResult_t result = { 1, 0, 0 };  /* == error (default) */
    if (!FUNC3(ctxCreation) && src && outbuff) {
        result = FUNC5(f_in, f_out,
                                        ctx,
                                        src, IN_CHUNK_SIZE,
                                        outbuff, outbufCapacity);
    } else {
        FUNC8("error : ressource allocation failed \n");
    }

    FUNC2(ctx);   /* supports free on NULL */
    FUNC6(src);
    FUNC6(outbuff);
    return result;
}