#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  scalar_t__ ssize_t ;
struct TYPE_12__ {int length; char* value; } ;
typedef  TYPE_2__ gss_buffer_desc ;
struct TYPE_13__ {TYPE_1__* gss; int /*<<< orphan*/  sock; } ;
struct TYPE_11__ {int enc; int /*<<< orphan*/  ctx; int /*<<< orphan*/  name; } ;
typedef  TYPE_3__ Port ;
typedef  int OM_uint32 ;

/* Variables and functions */
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FATAL ; 
 TYPE_2__ GSS_C_EMPTY_BUFFER ; 
 int /*<<< orphan*/  GSS_C_NO_CHANNEL_BINDINGS ; 
 int /*<<< orphan*/  GSS_C_NO_CREDENTIAL ; 
 int /*<<< orphan*/  GSS_C_QOP_DEFAULT ; 
 scalar_t__ FUNC0 (int) ; 
 int GSS_S_CONTINUE_NEEDED ; 
 int /*<<< orphan*/  MyLatch ; 
 int PQ_GSS_RECV_BUFFER_SIZE ; 
 int PQ_GSS_SEND_BUFFER_SIZE ; 
 char* PqGSSRecvBuffer ; 
 int PqGSSRecvLength ; 
 int PqGSSResultLength ; 
 int PqGSSResultPointer ; 
 int PqGSSSendBuffer ; 
 int PqGSSSendPointer ; 
 int PqGSSSendStart ; 
 int /*<<< orphan*/  WAIT_EVENT_GSS_OPEN_SERVER ; 
 int WL_EXIT_ON_PM_DEATH ; 
 int WL_SOCKET_WRITEABLE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t,int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int FUNC5 (int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int*,TYPE_2__*) ; 
 int FUNC7 (int*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  max_packet_size ; 
 int /*<<< orphan*/  FUNC9 (int,char*,int) ; 
 int FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/ * pg_krb_server_keyfile ; 
 scalar_t__ FUNC12 (TYPE_3__*,int) ; 
 scalar_t__ FUNC13 (TYPE_3__*,int,int) ; 
 int /*<<< orphan*/  FUNC14 (char*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ *) ; 

ssize_t
FUNC16(Port *port)
{
	bool		complete_next = false;
	OM_uint32	major,
				minor;

	/* initialize state variables */
	PqGSSSendPointer = PqGSSSendStart = PqGSSRecvLength = PqGSSResultPointer = PqGSSResultLength = 0;

	/*
	 * Use the configured keytab, if there is one.  Unfortunately, Heimdal
	 * doesn't support the cred store extensions, so use the env var.
	 */
	if (pg_krb_server_keyfile != NULL && FUNC15(pg_krb_server_keyfile) > 0)
		FUNC14("KRB5_KTNAME", pg_krb_server_keyfile, 1);

	while (true)
	{
		ssize_t		ret;
		gss_buffer_desc input,
					output = GSS_C_EMPTY_BUFFER;

		/*
		 * The client always sends first, so try to go ahead and read the
		 * length and wait on the socket to be readable again if that fails.
		 */
		ret = FUNC12(port, sizeof(uint32));
		if (ret < 0)
			return ret;

		/*
		 * Get the length for this packet from the length header.
		 */
		input.length = FUNC10(*(uint32 *) PqGSSRecvBuffer);

		/* Done with the length, reset our buffer */
		PqGSSRecvLength = 0;

		/*
		 * During initialization, packets are always fully consumed and
		 * shouldn't ever be over PQ_GSS_RECV_BUFFER_SIZE in length.
		 *
		 * Verify on our side that the client doesn't do something funny.
		 */
		if (input.length > PQ_GSS_RECV_BUFFER_SIZE)
			FUNC2(FATAL,
					(FUNC3("oversize GSSAPI packet sent by the client (%zu > %d)",
							(size_t) input.length,
							PQ_GSS_RECV_BUFFER_SIZE)));

		/*
		 * Get the rest of the packet so we can pass it to GSSAPI to accept
		 * the context.
		 */
		ret = FUNC12(port, input.length);
		if (ret < 0)
			return ret;

		input.value = PqGSSRecvBuffer;

		/* Process incoming data.  (The client sends first.) */
		major = FUNC5(&minor, &port->gss->ctx,
									   GSS_C_NO_CREDENTIAL, &input,
									   GSS_C_NO_CHANNEL_BINDINGS,
									   &port->gss->name, NULL, &output, NULL,
									   NULL, NULL);
		if (FUNC0(major))
		{
			FUNC11(ERROR, FUNC4("could not accept GSSAPI security context"),
						 major, minor);
			FUNC6(&minor, &output);
			return -1;
		}
		else if (!(major & GSS_S_CONTINUE_NEEDED))
		{
			/*
			 * rfc2744 technically permits context negotiation to be complete
			 * both with and without a packet to be sent.
			 */
			complete_next = true;
		}

		/* Done handling the incoming packet, reset our buffer */
		PqGSSRecvLength = 0;

		/*
		 * Check if we have data to send and, if we do, make sure to send it
		 * all
		 */
		if (output.length != 0)
		{
			uint32		netlen = FUNC8(output.length);

			if (output.length > PQ_GSS_SEND_BUFFER_SIZE - sizeof(uint32))
				FUNC2(FATAL,
						(FUNC3("server tried to send oversize GSSAPI packet (%zu > %zu)",
								(size_t) output.length,
								PQ_GSS_SEND_BUFFER_SIZE - sizeof(uint32))));

			FUNC9(PqGSSSendBuffer, (char *) &netlen, sizeof(uint32));
			PqGSSSendPointer += sizeof(uint32);

			FUNC9(PqGSSSendBuffer + PqGSSSendPointer, output.value, output.length);
			PqGSSSendPointer += output.length;

			while (PqGSSSendStart != sizeof(uint32) + output.length)
			{
				ret = FUNC13(port, PqGSSSendBuffer + PqGSSSendStart, sizeof(uint32) + output.length - PqGSSSendStart);
				if (ret <= 0)
				{
					FUNC1(MyLatch,
									  WL_SOCKET_WRITEABLE | WL_EXIT_ON_PM_DEATH,
									  port->sock, 0, WAIT_EVENT_GSS_OPEN_SERVER);
					continue;
				}

				PqGSSSendStart += ret;
			}

			/* Done sending the packet, reset our buffer */
			PqGSSSendStart = PqGSSSendPointer = 0;

			FUNC6(&minor, &output);
		}

		/*
		 * If we got back that the connection is finished being set up, now
		 * that's we've sent the last packet, exit our loop.
		 */
		if (complete_next)
			break;
	}

	/*
	 * Determine the max packet size which will fit in our buffer, after
	 * accounting for the length
	 */
	major = FUNC7(&minor, port->gss->ctx, 1, GSS_C_QOP_DEFAULT,
								PQ_GSS_SEND_BUFFER_SIZE - sizeof(uint32), &max_packet_size);

	if (FUNC0(major))
		FUNC11(FATAL, FUNC4("GSSAPI size check error"),
					 major, minor);

	port->gss->enc = true;

	return 0;
}