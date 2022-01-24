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
typedef  int /*<<< orphan*/  pem_name ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,unsigned int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,char*,unsigned char*,int) ; 
 int /*<<< orphan*/  bio_c_out ; 
 int /*<<< orphan*/  FUNC2 (unsigned char*,unsigned char const*,size_t) ; 

__attribute__((used)) static int FUNC3(SSL *s, unsigned int ext_type,
                                   const unsigned char *in, size_t inlen,
                                   int *al, void *arg)
{
    char pem_name[100];
    unsigned char ext_buf[4 + 65536];

    /* Reconstruct the type/len fields prior to extension data */
    inlen &= 0xffff; /* for formal memcmpy correctness */
    ext_buf[0] = (unsigned char)(ext_type >> 8);
    ext_buf[1] = (unsigned char)(ext_type);
    ext_buf[2] = (unsigned char)(inlen >> 8);
    ext_buf[3] = (unsigned char)(inlen);
    FUNC2(ext_buf + 4, in, inlen);

    FUNC0(pem_name, sizeof(pem_name), "SERVERINFO FOR EXTENSION %d",
                 ext_type);
    FUNC1(bio_c_out, pem_name, "", ext_buf, 4 + inlen);
    return 1;
}