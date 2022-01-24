#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_6__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct sockaddr_in6 {int dummy; } ;
struct TYPE_15__ {int array; } ;
struct TYPE_14__ {int addrLen; int /*<<< orphan*/  addr; } ;
struct TYPE_12__ {int /*<<< orphan*/  tcUrl; int /*<<< orphan*/  swfUrl; int /*<<< orphan*/  flashVer; int /*<<< orphan*/  pubPasswd; int /*<<< orphan*/  pubUser; } ;
struct TYPE_16__ {int m_outChunkSize; int m_bSendChunkSizeInfo; int m_bUseNagle; TYPE_3__ m_bindIP; TYPE_1__ Link; } ;
struct TYPE_13__ {char const* array; } ;
struct rtmp_stream {TYPE_4__ path; TYPE_6__ rtmp; int /*<<< orphan*/  output; TYPE_2__ key; TYPE_4__ bind_ip; int /*<<< orphan*/  encoder_name; int /*<<< orphan*/  password; int /*<<< orphan*/  username; } ;
typedef  int /*<<< orphan*/  obs_encoder_t ;

/* Variables and functions */
 int OBS_OUTPUT_BAD_PATH ; 
 int OBS_OUTPUT_CONNECT_FAILED ; 
 int OBS_OUTPUT_INVALID_STREAM ; 
 int /*<<< orphan*/  FUNC0 (TYPE_6__*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_6__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_6__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_6__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_6__*,int) ; 
 scalar_t__ FUNC6 (TYPE_4__*,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC8 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int FUNC10 (struct rtmp_stream*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,int) ; 
 int FUNC12 (int /*<<< orphan*/ *,int*,int) ; 
 char* FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC14 (int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC15 (struct rtmp_stream*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (struct rtmp_stream*) ; 

__attribute__((used)) static int FUNC19(struct rtmp_stream *stream)
{
	if (FUNC8(&stream->path)) {
		FUNC17("URL is empty");
		return OBS_OUTPUT_BAD_PATH;
	}

	FUNC9("Connecting to RTMP URL %s...", stream->path.array);

	FUNC4(&stream->rtmp);
	if (!FUNC5(&stream->rtmp, stream->path.array))
		return OBS_OUTPUT_BAD_PATH;

	FUNC3(&stream->rtmp);

	FUNC7(&stream->encoder_name, "FMLE/3.0 (compatible; FMSc/1.0)");

	FUNC16(&stream->rtmp.Link.pubUser, &stream->username);
	FUNC16(&stream->rtmp.Link.pubPasswd, &stream->password);
	FUNC16(&stream->rtmp.Link.flashVer, &stream->encoder_name);
	stream->rtmp.Link.swfUrl = stream->rtmp.Link.tcUrl;

	if (FUNC8(&stream->bind_ip) ||
	    FUNC6(&stream->bind_ip, "default") == 0) {
		FUNC11(&stream->rtmp.m_bindIP, 0,
		       sizeof(stream->rtmp.m_bindIP));
	} else {
		bool success = FUNC12(&stream->rtmp.m_bindIP.addr,
						 &stream->rtmp.m_bindIP.addrLen,
						 stream->bind_ip.array);
		if (success) {
			int len = stream->rtmp.m_bindIP.addrLen;
			bool ipv6 = len == sizeof(struct sockaddr_in6);
			FUNC9("Binding to IPv%d", ipv6 ? 6 : 4);
		}
	}

	FUNC0(&stream->rtmp, stream->key.array);

	for (size_t idx = 1;; idx++) {
		obs_encoder_t *encoder =
			FUNC14(stream->output, idx);
		const char *encoder_name;

		if (!encoder)
			break;

		encoder_name = FUNC13(encoder);
		FUNC0(&stream->rtmp, encoder_name);
	}

	stream->rtmp.m_outChunkSize = 4096;
	stream->rtmp.m_bSendChunkSizeInfo = true;
	stream->rtmp.m_bUseNagle = true;

#ifdef _WIN32
	win32_log_interface_type(stream);
#endif

	if (!FUNC1(&stream->rtmp, NULL)) {
		FUNC15(stream);
		return OBS_OUTPUT_CONNECT_FAILED;
	}

	if (!FUNC2(&stream->rtmp, 0))
		return OBS_OUTPUT_INVALID_STREAM;

	FUNC9("Connection to %s successful", stream->path.array);

	return FUNC10(stream);
}