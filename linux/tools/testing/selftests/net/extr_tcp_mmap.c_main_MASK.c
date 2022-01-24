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
struct sockaddr_storage {int dummy; } ;
struct sockaddr_in6 {int dummy; } ;
struct sockaddr_in {int dummy; } ;
struct sockaddr {int dummy; } ;
typedef  int /*<<< orphan*/  on ;
typedef  int /*<<< orphan*/  mss ;
typedef  int /*<<< orphan*/  max_pacing_rate ;

/* Variables and functions */
 unsigned long FILE_SZ ; 
 int /*<<< orphan*/  IPPROTO_TCP ; 
 int MAP_ANONYMOUS ; 
 int MAP_PRIVATE ; 
 int /*<<< orphan*/  MSG_ZEROCOPY ; 
 int /*<<< orphan*/  PF_INET ; 
 int /*<<< orphan*/  PF_INET6 ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  SOCK_STREAM ; 
 int /*<<< orphan*/  SOL_SOCKET ; 
 int /*<<< orphan*/  SO_MAX_PACING_RATE ; 
 int /*<<< orphan*/  SO_REUSEADDR ; 
 int /*<<< orphan*/  SO_ZEROCOPY ; 
 int /*<<< orphan*/  TCP_MAXSEG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 void* FUNC1 (char*) ; 
 int FUNC2 (int,struct sockaddr const*,int) ; 
 int cfg_alen ; 
 int /*<<< orphan*/  cfg_family ; 
 void* cfg_port ; 
 long chunk_size ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int,struct sockaddr const*,int) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 int /*<<< orphan*/  FUNC6 (int) ; 
 int FUNC7 (int,char**,char*) ; 
 int keepflag ; 
 int FUNC8 (int,int) ; 
 char* FUNC9 (int /*<<< orphan*/ *,long,int,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (char*,long) ; 
 char* optarg ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 void* rcvbuf ; 
 long FUNC12 (int,char*,long,int /*<<< orphan*/ ) ; 
 int FUNC13 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,struct sockaddr_storage*) ; 
 void* sndbuf ; 
 int FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int xflg ; 
 int zflg ; 

int FUNC16(int argc, char *argv[])
{
	struct sockaddr_storage listenaddr, addr;
	unsigned int max_pacing_rate = 0;
	unsigned long total = 0;
	char *host = NULL;
	int fd, c, on = 1;
	char *buffer;
	int sflg = 0;
	int mss = 0;

	while ((c = FUNC7(argc, argv, "46p:svr:w:H:zxkP:M:")) != -1) {
		switch (c) {
		case '4':
			cfg_family = PF_INET;
			cfg_alen = sizeof(struct sockaddr_in);
			break;
		case '6':
			cfg_family = PF_INET6;
			cfg_alen = sizeof(struct sockaddr_in6);
			break;
		case 'p':
			cfg_port = FUNC1(optarg);
			break;
		case 'H':
			host = optarg;
			break;
		case 's': /* server : listen for incoming connections */
			sflg++;
			break;
		case 'r':
			rcvbuf = FUNC1(optarg);
			break;
		case 'w':
			sndbuf = FUNC1(optarg);
			break;
		case 'z':
			zflg = 1;
			break;
		case 'M':
			mss = FUNC1(optarg);
			break;
		case 'x':
			xflg = 1;
			break;
		case 'k':
			keepflag = 1;
			break;
		case 'P':
			max_pacing_rate = FUNC1(optarg) ;
			break;
		default:
			FUNC6(1);
		}
	}
	if (sflg) {
		int fdlisten = FUNC15(cfg_family, SOCK_STREAM, 0);

		if (fdlisten == -1) {
			FUNC11("socket");
			FUNC6(1);
		}
		FUNC0(fdlisten);
		FUNC13(fdlisten, SOL_SOCKET, SO_REUSEADDR, &on, sizeof(on));

		FUNC14(cfg_family, host, &listenaddr);

		if (mss &&
		    FUNC13(fdlisten, IPPROTO_TCP, TCP_MAXSEG,
			       &mss, sizeof(mss)) == -1) {
			FUNC11("setsockopt TCP_MAXSEG");
			FUNC6(1);
		}
		if (FUNC2(fdlisten, (const struct sockaddr *)&listenaddr, cfg_alen) == -1) {
			FUNC11("bind");
			FUNC6(1);
		}
		if (FUNC8(fdlisten, 128) == -1) {
			FUNC11("listen");
			FUNC6(1);
		}
		FUNC5(fdlisten);
	}
	buffer = FUNC9(NULL, chunk_size, PROT_READ | PROT_WRITE,
			      MAP_PRIVATE | MAP_ANONYMOUS, -1, 0);
	if (buffer == (char *)-1) {
		FUNC11("mmap");
		FUNC6(1);
	}

	fd = FUNC15(cfg_family, SOCK_STREAM, 0);
	if (fd == -1) {
		FUNC11("socket");
		FUNC6(1);
	}
	FUNC0(fd);

	FUNC14(cfg_family, host, &addr);

	if (mss &&
	    FUNC13(fd, IPPROTO_TCP, TCP_MAXSEG, &mss, sizeof(mss)) == -1) {
		FUNC11("setsockopt TCP_MAXSEG");
		FUNC6(1);
	}
	if (FUNC4(fd, (const struct sockaddr *)&addr, cfg_alen) == -1) {
		FUNC11("connect");
		FUNC6(1);
	}
	if (max_pacing_rate &&
	    FUNC13(fd, SOL_SOCKET, SO_MAX_PACING_RATE,
		       &max_pacing_rate, sizeof(max_pacing_rate)) == -1)
		FUNC11("setsockopt SO_MAX_PACING_RATE");

	if (zflg && FUNC13(fd, SOL_SOCKET, SO_ZEROCOPY,
			       &on, sizeof(on)) == -1) {
		FUNC11("setsockopt SO_ZEROCOPY, (-z option disabled)");
		zflg = 0;
	}
	while (total < FILE_SZ) {
		long wr = FILE_SZ - total;

		if (wr > chunk_size)
			wr = chunk_size;
		/* Note : we just want to fill the pipe with 0 bytes */
		wr = FUNC12(fd, buffer, wr, zflg ? MSG_ZEROCOPY : 0);
		if (wr <= 0)
			break;
		total += wr;
	}
	FUNC3(fd);
	FUNC10(buffer, chunk_size);
	return 0;
}