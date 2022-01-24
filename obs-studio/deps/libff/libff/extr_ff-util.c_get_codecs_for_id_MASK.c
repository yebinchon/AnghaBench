#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct ff_format_desc {int dummy; } ;
struct ff_codec_desc {int dummy; } ;
typedef  enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_5__ {int /*<<< orphan*/  id; } ;
typedef  TYPE_1__ AVCodec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ff_format_desc const*,struct ff_codec_desc**,struct ff_codec_desc**,int /*<<< orphan*/ ,TYPE_1__ const*,int) ; 
 TYPE_1__* FUNC1 (int,TYPE_1__ const*) ; 

__attribute__((used)) static void FUNC2(const struct ff_format_desc *format_desc,
                              struct ff_codec_desc **first,
                              struct ff_codec_desc **current, enum AVCodecID id,
                              bool ignore_compatability)
{
	const AVCodec *codec = NULL;
	while ((codec = FUNC1(id, codec)) != NULL)
		FUNC0(format_desc, first, current, codec->id, codec,
		                  ignore_compatability);
}