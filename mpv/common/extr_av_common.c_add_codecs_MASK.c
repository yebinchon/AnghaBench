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
struct mp_decoder_list {int dummy; } ;
typedef  enum AVMediaType { ____Placeholder_AVMediaType } AVMediaType ;
struct TYPE_4__ {int type; int /*<<< orphan*/  long_name; int /*<<< orphan*/  name; int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ AVCodec ;

/* Variables and functions */
 int AVMEDIA_TYPE_UNKNOWN ; 
 int FUNC0 (TYPE_1__ const*) ; 
 TYPE_1__* FUNC1 (void**) ; 
 int /*<<< orphan*/  FUNC2 (struct mp_decoder_list*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC4(struct mp_decoder_list *list, enum AVMediaType type,
                       bool decoders)
{
    void *iter = NULL;
    for (;;) {
        const AVCodec *cur = FUNC1(&iter);
        if (!cur)
            break;
        if (FUNC0(cur) == decoders &&
            (type == AVMEDIA_TYPE_UNKNOWN || cur->type == type))
        {
            FUNC2(list, FUNC3(cur->id),
                           cur->name, cur->long_name);
        }
    }
}