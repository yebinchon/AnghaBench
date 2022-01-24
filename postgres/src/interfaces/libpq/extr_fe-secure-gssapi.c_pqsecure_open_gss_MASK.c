#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint32 ;
typedef  scalar_t__ ssize_t ;
struct TYPE_12__ {int length; char* value; } ;
typedef  TYPE_1__ gss_buffer_desc ;
struct TYPE_13__ {int allow_ssl_try; int gssenc; int /*<<< orphan*/  gctx; int /*<<< orphan*/  gcred; int /*<<< orphan*/  gtarg_nam; int /*<<< orphan*/  errorMessage; } ;
typedef  scalar_t__ PostgresPollingStatusType ;
typedef  TYPE_2__ PGconn ;
typedef  int /*<<< orphan*/  OM_uint32 ;

/* Variables and functions */
 scalar_t__ EWOULDBLOCK ; 
 TYPE_1__ GSS_C_EMPTY_BUFFER ; 
 int /*<<< orphan*/  GSS_C_NO_CREDENTIAL ; 
 int /*<<< orphan*/  GSS_C_NO_OID ; 
 int /*<<< orphan*/  GSS_C_QOP_DEFAULT ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GSS_REQUIRED_FLAGS ; 
 scalar_t__ PGRES_POLLING_FAILED ; 
 scalar_t__ PGRES_POLLING_OK ; 
 scalar_t__ PGRES_POLLING_READING ; 
 scalar_t__ PGRES_POLLING_WRITING ; 
 int PQ_GSS_RECV_BUFFER_SIZE ; 
 int PQ_GSS_SEND_BUFFER_SIZE ; 
 char* PqGSSRecvBuffer ; 
 int PqGSSRecvLength ; 
 scalar_t__ PqGSSRecvPointer ; 
 int PqGSSResultLength ; 
 int PqGSSResultPointer ; 
 scalar_t__ PqGSSSendBuffer ; 
 scalar_t__ PqGSSSendPointer ; 
 scalar_t__ PqGSSSendStart ; 
 scalar_t__ STATUS_OK ; 
 scalar_t__ errno ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*,int /*<<< orphan*/ *,TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (TYPE_2__*,char*,int,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  max_packet_size ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__,char*,int) ; 
 int FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (TYPE_2__*) ; 
 scalar_t__ FUNC12 (TYPE_2__*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*,...) ; 

PostgresPollingStatusType
FUNC14(PGconn *conn)
{
	static int	first = 1;
	ssize_t		ret;
	OM_uint32	major,
				minor;
	uint32		netlen;
	PostgresPollingStatusType result;
	gss_buffer_desc input = GSS_C_EMPTY_BUFFER,
				output = GSS_C_EMPTY_BUFFER;

	/* Check for data that needs to be written */
	if (first)
	{
		PqGSSSendPointer = PqGSSSendStart = PqGSSRecvPointer = PqGSSRecvLength = PqGSSResultPointer = PqGSSResultLength = 0;
		first = 0;
	}

	/*
	 * Check if we have anything to send from a prior call and if so, send it.
	 */
	if (PqGSSSendPointer)
	{
		ssize_t		amount = PqGSSSendPointer - PqGSSSendStart;

		ret = FUNC12(conn, PqGSSSendBuffer + PqGSSSendStart, amount);
		if (ret < 0 && errno == EWOULDBLOCK)
			return PGRES_POLLING_WRITING;

		if (ret != amount)
		{
			PqGSSSendStart += amount;
			return PGRES_POLLING_WRITING;
		}

		PqGSSSendPointer = PqGSSSendStart = 0;
	}

	/*
	 * Client sends first, and sending creates a context, therefore this will
	 * be false the first time through, and then when we get called again we
	 * will check for incoming data.
	 */
	if (conn->gctx)
	{
		/* Process any incoming data we might have */

		/* See if we are still trying to get the length */
		if (PqGSSRecvLength < sizeof(uint32))
		{
			/* Attempt to get the length first */
			result = FUNC2(conn, PqGSSRecvBuffer + PqGSSRecvLength, sizeof(uint32) - PqGSSRecvLength, &ret);
			if (result != PGRES_POLLING_OK)
				return result;

			PqGSSRecvLength += ret;

			if (PqGSSRecvLength < sizeof(uint32))
				return PGRES_POLLING_READING;
		}

		/*
		 * Check if we got an error packet
		 *
		 * This is safe to do because we shouldn't ever get a packet over 8192
		 * and therefore the actual length bytes, being that they are in
		 * network byte order, for any real packet will start with two zero
		 * bytes.
		 */
		if (PqGSSRecvBuffer[0] == 'E')
		{
			/*
			 * For an error packet during startup, we don't get a length, so
			 * simply read as much as we can fit into our buffer (as a string,
			 * so leave a spot at the end for a NULL byte too) and report that
			 * back to the caller.
			 */
			result = FUNC2(conn, PqGSSRecvBuffer + PqGSSRecvLength, PQ_GSS_RECV_BUFFER_SIZE - PqGSSRecvLength - 1, &ret);
			if (result != PGRES_POLLING_OK)
				return result;

			PqGSSRecvLength += ret;

			FUNC13(&conn->errorMessage, "%s\n", PqGSSRecvBuffer + 1);

			return PGRES_POLLING_FAILED;
		}

		/*
		 * We should have the whole length at this point, so pull it out and
		 * then read whatever we have left of the packet
		 */

		/* Get the length and check for over-length packet */
		input.length = FUNC9(*(uint32 *) PqGSSRecvBuffer);
		if (input.length > PQ_GSS_RECV_BUFFER_SIZE - sizeof(uint32))
		{
			FUNC13(&conn->errorMessage,
							  FUNC7("oversize GSSAPI packet sent by the server (%zu > %zu)\n"),
							  (size_t) input.length,
							  PQ_GSS_RECV_BUFFER_SIZE - sizeof(uint32));
			return PGRES_POLLING_FAILED;
		}

		/*
		 * Read as much of the packet as we are able to on this call into
		 * wherever we left off from the last time we were called.
		 */
		result = FUNC2(conn, PqGSSRecvBuffer + PqGSSRecvLength,
						  input.length - (PqGSSRecvLength - sizeof(uint32)), &ret);
		if (result != PGRES_POLLING_OK)
			return result;

		PqGSSRecvLength += ret;

		/*
		 * If we got less than the rest of the packet then we need to return
		 * and be called again.
		 */
		if (PqGSSRecvLength - sizeof(uint32) < input.length)
			return PGRES_POLLING_READING;

		input.value = PqGSSRecvBuffer + sizeof(uint32);
	}

	/* Load the service name (no-op if already done */
	ret = FUNC11(conn);
	if (ret != STATUS_OK)
		return PGRES_POLLING_FAILED;

	/*
	 * Call GSS init context, either with an empty input, or with a complete
	 * packet from the server.
	 */
	major = FUNC1(&minor, conn->gcred, &conn->gctx,
								 conn->gtarg_nam, GSS_C_NO_OID,
								 GSS_REQUIRED_FLAGS, 0, 0, &input, NULL,
								 &output, NULL, NULL);

	/* GSS Init Sec Context uses the whole packet, so clear it */
	PqGSSRecvPointer = PqGSSRecvLength = 0;

	if (FUNC0(major))
	{
		FUNC10(FUNC7("could not initiate GSSAPI security context"),
					 conn, major, minor);
		return PGRES_POLLING_FAILED;
	}
	else if (output.length == 0)
	{
		/*
		 * We're done - hooray!  Kind of gross, but we need to disable SSL
		 * here so that we don't accidentally tunnel one over the other.
		 */
#ifdef USE_SSL
		conn->allow_ssl_try = false;
#endif
		FUNC4(&minor, &conn->gcred);
		conn->gcred = GSS_C_NO_CREDENTIAL;
		conn->gssenc = true;

		/*
		 * Determine the max packet size which will fit in our buffer, after
		 * accounting for the length
		 */
		major = FUNC5(&minor, conn->gctx, 1, GSS_C_QOP_DEFAULT,
									PQ_GSS_SEND_BUFFER_SIZE - sizeof(uint32), &max_packet_size);

		if (FUNC0(major))
			FUNC10(FUNC7("GSSAPI size check error"), conn,
						 major, minor);

		return PGRES_POLLING_OK;
	}

	/* Must have output.length > 0 */
	if (output.length > PQ_GSS_SEND_BUFFER_SIZE - sizeof(uint32))
	{
		FUNC10(FUNC7("GSSAPI context establishment error"),
					 conn, major, minor);
		return PGRES_POLLING_FAILED;
	}

	/* Queue the token for writing */
	netlen = FUNC6(output.length);

	FUNC8(PqGSSSendBuffer, (char *) &netlen, sizeof(uint32));
	PqGSSSendPointer += sizeof(uint32);

	FUNC8(PqGSSSendBuffer + PqGSSSendPointer, output.value, output.length);
	PqGSSSendPointer += output.length;

	FUNC3(&minor, &output);

	/* Asked to be called again to write data */
	return PGRES_POLLING_WRITING;
}