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
typedef  unsigned char* uint8_t ;
struct tlsa_field {unsigned char** member_0; char* member_1; scalar_t__ (* parser ) (char const*,scalar_t__) ;int /*<<< orphan*/  name; scalar_t__ var; int /*<<< orphan*/  const member_2; } ;
typedef  scalar_t__ ossl_ssize_t ;
typedef  int /*<<< orphan*/  SSL ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (unsigned char* const) ; 
 int FUNC1 (int /*<<< orphan*/ *,unsigned char* const,unsigned char* const,unsigned char* const,unsigned char* const,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,...) ; 
#define  checked_uint8 129 
#define  hexdecode 128 
 scalar_t__ FUNC3 (char const*,scalar_t__) ; 

__attribute__((used)) static int FUNC4(SSL *ssl, const char *rrdata)
{
    static uint8_t usage;
    static uint8_t selector;
    static uint8_t mtype;
    static unsigned char *data = NULL;
    static struct tlsa_field tlsa_fields[] = {
        { &usage, "usage", checked_uint8 },
        { &selector, "selector", checked_uint8 },
        { &mtype, "mtype", checked_uint8 },
        { &data, "data", hexdecode },
        { NULL, }
    };
    int ret;
    struct tlsa_field *f;
    const char *cp = rrdata;
    ossl_ssize_t len = 0;

    for (f = tlsa_fields; f->var; ++f) {
        if ((len = f->parser(cp += len, f->var)) <= 0) {
            FUNC2("bad TLSA %s field in: %s", f->name, rrdata);
            return 0;
        }
    }

    ret = FUNC1(ssl, usage, selector, mtype, data, len);
    FUNC0(data);
    if (ret == 0) {
        FUNC2("unusable TLSA rrdata: %s", rrdata);
        return 0;
    }
    if (ret < 0) {
        FUNC2("error loading TLSA rrdata: %s", rrdata);
        return 0;
    }

    return ret;
}