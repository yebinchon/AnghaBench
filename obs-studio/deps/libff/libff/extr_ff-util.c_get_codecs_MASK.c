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
typedef  int /*<<< orphan*/  AVCodecDescriptor ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/ ** FUNC0 (unsigned int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,unsigned int) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/  const*) ; 

__attribute__((used)) static bool FUNC3(const AVCodecDescriptor ***descs, unsigned int *size)
{
	const AVCodecDescriptor *desc = NULL;
	const AVCodecDescriptor **codecs;
	unsigned int codec_count = 0;
	unsigned int i = 0;

	while ((desc = FUNC2(desc)) != NULL)
		codec_count++;

	codecs = FUNC0(codec_count, sizeof(AVCodecDescriptor *));

	if (codecs == NULL) {
		FUNC1(NULL, AV_LOG_ERROR,
		       "unable to allocate sorted codec "
		       "array with size %d",
		       codec_count);
		return false;
	}

	while ((desc = FUNC2(desc)) != NULL)
		codecs[i++] = desc;

	*size = codec_count;
	*descs = codecs;
	return true;
}