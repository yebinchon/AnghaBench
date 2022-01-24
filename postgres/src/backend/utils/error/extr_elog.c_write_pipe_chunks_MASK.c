#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* nuls; float is_last; int len; int /*<<< orphan*/  data; int /*<<< orphan*/  pid; } ;
struct TYPE_5__ {TYPE_1__ proto; } ;
typedef  TYPE_2__ PipeProtoChunk ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int LOG_DESTINATION_CSVLOG ; 
 int /*<<< orphan*/  MyProcPid ; 
 scalar_t__ PIPE_HEADER_SIZE ; 
 int PIPE_MAX_PAYLOAD ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC3 (int,TYPE_2__*,scalar_t__) ; 

__attribute__((used)) static void
FUNC4(char *data, int len, int dest)
{
	PipeProtoChunk p;
	int			fd = FUNC1(stderr);
	int			rc;

	FUNC0(len > 0);

	p.proto.nuls[0] = p.proto.nuls[1] = '\0';
	p.proto.pid = MyProcPid;

	/* write all but the last chunk */
	while (len > PIPE_MAX_PAYLOAD)
	{
		p.proto.is_last = (dest == LOG_DESTINATION_CSVLOG ? 'F' : 'f');
		p.proto.len = PIPE_MAX_PAYLOAD;
		FUNC2(p.proto.data, data, PIPE_MAX_PAYLOAD);
		rc = FUNC3(fd, &p, PIPE_HEADER_SIZE + PIPE_MAX_PAYLOAD);
		(void) rc;
		data += PIPE_MAX_PAYLOAD;
		len -= PIPE_MAX_PAYLOAD;
	}

	/* write the last chunk */
	p.proto.is_last = (dest == LOG_DESTINATION_CSVLOG ? 'T' : 't');
	p.proto.len = len;
	FUNC2(p.proto.data, data, len);
	rc = FUNC3(fd, &p, PIPE_HEADER_SIZE + len);
	(void) rc;
}