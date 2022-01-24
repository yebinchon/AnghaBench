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
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  X509_REQ ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,unsigned long,unsigned char*,int) ; 
 int /*<<< orphan*/  bio_err ; 
 int FUNC3 (char*,char const*,char*,int,int,char*,int,char*,char*) ; 

__attribute__((used)) static int FUNC4(X509_REQ *req, char *text, const char *def,
                                char *value, int nid, int n_min,
                                int n_max, unsigned long chtype)
{
    int ret = 0;
    char buf[1024];

    ret = FUNC3(text, def, value, n_min, n_max, buf, sizeof(buf),
                     "Attribute value", "Attribute default");
    if ((ret == 0) || (ret == 1))
        return ret;
    ret = 1;

    if (!FUNC2(req, nid, chtype,
                                   (unsigned char *)buf, -1)) {
        FUNC0(bio_err, "Error adding attribute\n");
        FUNC1(bio_err);
        ret = 0;
    }

    return ret;
}