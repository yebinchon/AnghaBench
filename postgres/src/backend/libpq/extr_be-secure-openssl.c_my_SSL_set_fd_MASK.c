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
struct TYPE_4__ {int /*<<< orphan*/  ssl; } ;
typedef  TYPE_1__ Port ;
typedef  int /*<<< orphan*/  BIO_METHOD ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  BIO_NOCLOSE ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ERR_R_BUF_LIB ; 
 int /*<<< orphan*/  SSL_F_SSL_SET_FD ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC5 () ; 

__attribute__((used)) static int
FUNC6(Port *port, int fd)
{
	int			ret = 0;
	BIO		   *bio;
	BIO_METHOD *bio_method;

	bio_method = FUNC5();
	if (bio_method == NULL)
	{
		FUNC4(SSL_F_SSL_SET_FD, ERR_R_BUF_LIB);
		goto err;
	}
	bio = FUNC0(bio_method);

	if (bio == NULL)
	{
		FUNC4(SSL_F_SSL_SET_FD, ERR_R_BUF_LIB);
		goto err;
	}
	FUNC1(bio, port);

	FUNC2(bio, fd, BIO_NOCLOSE);
	FUNC3(port->ssl, bio, bio);
	ret = 1;
err:
	return ret;
}