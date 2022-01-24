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
struct TYPE_2__ {int /*<<< orphan*/  s_addr; } ;
struct sockaddr_in {int /*<<< orphan*/  sin_port; TYPE_1__ sin_addr; int /*<<< orphan*/  sin_family; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  WSADATA ;
typedef  int /*<<< orphan*/  WORD ;
typedef  scalar_t__ SOCKET ;

/* Variables and functions */
 int /*<<< orphan*/  AF_INET ; 
 int /*<<< orphan*/  INADDR_ANY ; 
 int /*<<< orphan*/  FUNC0 (int,int) ; 
 int /*<<< orphan*/  PTHREAD_CANCEL_ASYNCHRONOUS ; 
 int /*<<< orphan*/  PTHREAD_CANCEL_ENABLE ; 
 int /*<<< orphan*/  SOCK_DGRAM ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (scalar_t__,struct sockaddr*,int) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (scalar_t__,char*,int,int /*<<< orphan*/ ,struct sockaddr*,int*) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

void *
FUNC12 (void *arg)
{
  struct sockaddr_in serverAddress;
  struct sockaddr_in clientAddress;
  SOCKET UDPSocket;
  int addr_len;
  int nbyte, bytes;
  char buffer[4096];
  WORD wsaVersion = FUNC0 (2, 2);
  WSADATA wsaData;

  FUNC8 (PTHREAD_CANCEL_ENABLE, NULL);
  FUNC9 (PTHREAD_CANCEL_ASYNCHRONOUS, NULL);

  if (FUNC2 (wsaVersion, &wsaData) != 0)
    {
      return NULL;
    }

  UDPSocket = FUNC11 (AF_INET, SOCK_DGRAM, 0);
  if ((int)UDPSocket == -1)
    {
      FUNC7 ("Server: socket ERROR \n");
      FUNC5 (-1);
    }

  serverAddress.sin_family = AF_INET;
  serverAddress.sin_addr.s_addr = INADDR_ANY;
  serverAddress.sin_port = FUNC6 (9003);

  if (FUNC3
      (UDPSocket, (struct sockaddr *) &serverAddress,
       sizeof (struct sockaddr_in)))
    {
      FUNC7 ("Server: ERROR can't bind UDPSocket");
      FUNC5 (-1);
    }

  addr_len = sizeof (struct sockaddr);

  nbyte = 512;

  bytes =
    FUNC10 (UDPSocket, (char *) buffer, nbyte, 0,
	      (struct sockaddr *) &clientAddress, &addr_len);

  FUNC4 (UDPSocket);
  FUNC1 ();

  return NULL;
}