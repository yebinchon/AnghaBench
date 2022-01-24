#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {int ingroup; int /*<<< orphan*/  bio; } ;
typedef  TYPE_1__ tracedata ;
typedef  int /*<<< orphan*/  tid ;
typedef  int /*<<< orphan*/  buffer ;
typedef  int /*<<< orphan*/  CRYPTO_THREAD_ID ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC2 (int /*<<< orphan*/ ,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (unsigned char const*,int) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
#define  OSSL_TRACE_CTRL_BEGIN 130 
#define  OSSL_TRACE_CTRL_END 129 
#define  OSSL_TRACE_CTRL_WRITE 128 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  PREFIX_CTRL_SET_PREFIX ; 
 int /*<<< orphan*/  FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

__attribute__((used)) static size_t FUNC9(const char *buf, size_t cnt,
                                int category, int cmd, void *vdata)
{
    int ret = 0;
    tracedata *trace_data = vdata;
    char buffer[256], *hex;
    CRYPTO_THREAD_ID tid;

    switch (cmd) {
    case OSSL_TRACE_CTRL_BEGIN:
        if (!FUNC7(!trace_data->ingroup))
            return 0;
        trace_data->ingroup = 1;

        tid = FUNC3();
        hex = FUNC4((const unsigned char *)&tid, sizeof(tid));
        FUNC1(buffer, sizeof(buffer), "TRACE[%s]:%s: ",
                     hex, FUNC6(category));
        FUNC5(hex);
        FUNC0(trace_data->bio, PREFIX_CTRL_SET_PREFIX,
                 FUNC8(buffer), buffer);
        break;
    case OSSL_TRACE_CTRL_WRITE:
        if (!FUNC7(trace_data->ingroup))
            return 0;

        ret = FUNC2(trace_data->bio, buf, cnt);
        break;
    case OSSL_TRACE_CTRL_END:
        if (!FUNC7(trace_data->ingroup))
            return 0;
        trace_data->ingroup = 0;

        FUNC0(trace_data->bio, PREFIX_CTRL_SET_PREFIX, 0, NULL);

        break;
    }

    return ret < 0 ? 0 : ret;
}