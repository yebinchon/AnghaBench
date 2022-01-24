#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/ * pctx; int /*<<< orphan*/  input; scalar_t__ is_oneshot; int /*<<< orphan*/  output_len; int /*<<< orphan*/  output; int /*<<< orphan*/  osin_len; int /*<<< orphan*/  osin; int /*<<< orphan*/  md; int /*<<< orphan*/  ctx; scalar_t__ is_verify; } ;
struct TYPE_5__ {int skip; char* err; TYPE_2__* data; } ;
typedef  TYPE_1__ EVP_TEST ;
typedef  int /*<<< orphan*/  EVP_PKEY ;
typedef  TYPE_2__ DIGESTSIGN_DATA ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ **,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC2 (char const*,int /*<<< orphan*/ *) ; 
 int FUNC3 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ **,char const*,int /*<<< orphan*/ ) ; 
 int FUNC6 (char const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC7 (TYPE_1__*,int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  private_keys ; 
 int /*<<< orphan*/  public_keys ; 
 scalar_t__ FUNC8 (char const*,char*) ; 

__attribute__((used)) static int FUNC9(EVP_TEST *t,
                                   const char *keyword, const char *value)
{
    DIGESTSIGN_DATA *mdata = t->data;

    if (FUNC8(keyword, "Key") == 0) {
        EVP_PKEY *pkey = NULL;
        int rv = 0;

        if (mdata->is_verify)
            rv = FUNC5(&pkey, value, public_keys);
        if (rv == 0)
            rv = FUNC5(&pkey, value, private_keys);
        if (rv == 0 || pkey == NULL) {
            t->skip = 1;
            return 1;
        }
        if (mdata->is_verify) {
            if (!FUNC1(mdata->ctx, &mdata->pctx, mdata->md,
                                      NULL, pkey))
                t->err = "DIGESTVERIFYINIT_ERROR";
            return 1;
        }
        if (!FUNC0(mdata->ctx, &mdata->pctx, mdata->md, NULL,
                                pkey))
            t->err = "DIGESTSIGNINIT_ERROR";
        return 1;
    }

    if (FUNC8(keyword, "Input") == 0) {
        if (mdata->is_oneshot)
            return FUNC6(value, &mdata->osin, &mdata->osin_len);
        return FUNC2(value, &mdata->input);
    }
    if (FUNC8(keyword, "Output") == 0)
        return FUNC6(value, &mdata->output, &mdata->output_len);

    if (!mdata->is_oneshot) {
        if (FUNC8(keyword, "Count") == 0)
            return FUNC4(value, mdata->input);
        if (FUNC8(keyword, "Ncopy") == 0)
            return FUNC3(value, mdata->input);
    }
    if (FUNC8(keyword, "Ctrl") == 0) {
        if (mdata->pctx == NULL)
            return -1;
        return FUNC7(t, mdata->pctx, value);
    }
    return 0;
}