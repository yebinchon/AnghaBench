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
struct demuxer {int dummy; } ;
struct AVFormatContext {struct demuxer* opaque; } ;
typedef  int /*<<< orphan*/  AVIOContext ;
typedef  int /*<<< orphan*/  AVDictionary ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EACCES ; 
 int /*<<< orphan*/  FUNC1 (struct demuxer*,char*,char const*) ; 

__attribute__((used)) static int FUNC2(struct AVFormatContext *s, AVIOContext **pb,
                         const char *url, int flags, AVDictionary **options)
{
    struct demuxer *demuxer = s->opaque;
    FUNC1(demuxer, "Not opening '%s' due to --access-references=no.\n", url);
    return FUNC0(EACCES);
}