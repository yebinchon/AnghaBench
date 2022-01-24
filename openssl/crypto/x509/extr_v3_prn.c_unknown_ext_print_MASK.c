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
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,unsigned char const*,int,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *,char const*,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int,char*) ; 
#define  X509V3_EXT_DEFAULT 131 
#define  X509V3_EXT_DUMP_UNKNOWN 130 
#define  X509V3_EXT_ERROR_UNKNOWN 129 
#define  X509V3_EXT_PARSE_UNKNOWN 128 
 unsigned long X509V3_EXT_UNKNOWN_MASK ; 

__attribute__((used)) static int FUNC3(BIO *out, const unsigned char *ext, int extlen,
                             unsigned long flag, int indent, int supported)
{
    switch (flag & X509V3_EXT_UNKNOWN_MASK) {

    case X509V3_EXT_DEFAULT:
        return 0;

    case X509V3_EXT_ERROR_UNKNOWN:
        if (supported)
            FUNC2(out, "%*s<Parse Error>", indent, "");
        else
            FUNC2(out, "%*s<Not Supported>", indent, "");
        return 1;

    case X509V3_EXT_PARSE_UNKNOWN:
        return FUNC0(out, ext, extlen, indent, -1);
    case X509V3_EXT_DUMP_UNKNOWN:
        return FUNC1(out, (const char *)ext, extlen, indent);

    default:
        return 1;
    }
}