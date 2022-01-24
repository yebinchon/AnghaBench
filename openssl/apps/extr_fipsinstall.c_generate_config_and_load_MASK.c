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
typedef  int /*<<< orphan*/  CONF ;
typedef  int /*<<< orphan*/  BIO ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,unsigned char*,size_t,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char const*,char const*) ; 

__attribute__((used)) static CONF *FUNC8(const char *prov_name,
                                      const char *section,
                                      unsigned char *module_mac,
                                      size_t module_mac_len)
{
    BIO *mem_bio = NULL;
    CONF *conf = NULL;

    mem_bio = FUNC1(FUNC2());
    if (mem_bio  == NULL)
        return 0;
    if (!FUNC7(mem_bio, prov_name, section)
         || !FUNC6(mem_bio, section, module_mac,
                                       module_mac_len, NULL, 0))
        goto end;

    conf = FUNC5(mem_bio, NULL);
    if (conf == NULL)
        goto end;

    if (!FUNC3(conf, NULL, 0))
        goto end;
    FUNC0(mem_bio);
    return conf;
end:
    FUNC4(conf);
    FUNC0(mem_bio);
    return NULL;
}