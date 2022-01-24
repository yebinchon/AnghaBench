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
typedef  int /*<<< orphan*/  SSL ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,unsigned char) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*) ; 
 int FUNC2 (int /*<<< orphan*/ *,unsigned char const**) ; 
 int /*<<< orphan*/  cert_type_list ; 
 char* FUNC3 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC4(BIO *bio, SSL *s)
{
    const unsigned char *p;
    int i;
    int cert_type_num = FUNC2(s, &p);
    if (!cert_type_num)
        return;
    FUNC1(bio, "Client Certificate Types: ");
    for (i = 0; i < cert_type_num; i++) {
        unsigned char cert_type = p[i];
        const char *cname = FUNC3((int)cert_type, cert_type_list, NULL);

        if (i)
            FUNC1(bio, ", ");
        if (cname != NULL)
            FUNC1(bio, cname);
        else
            FUNC0(bio, "UNKNOWN (%d),", cert_type);
    }
    FUNC1(bio, "\n");
}