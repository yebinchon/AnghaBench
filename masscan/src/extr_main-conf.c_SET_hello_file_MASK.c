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
struct Masscan {scalar_t__ echo; } ;
typedef  int /*<<< orphan*/  foo ;
typedef  int /*<<< orphan*/  buf2 ;
typedef  int /*<<< orphan*/  buf ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 unsigned int FUNC0 (char const*) ; 
 int CONF_ERR ; 
 int CONF_OK ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*) ; 
 size_t FUNC2 (char*,int,char*,size_t) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ **,char const*,char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,char const*) ; 
 size_t FUNC6 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (struct Masscan*,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (char const*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,unsigned int) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static int FUNC10(struct Masscan *masscan, const char *name, const char *value)
{
    unsigned index;
    FILE *fp;
    int x;
    char buf[16384];
    char buf2[16384];
    size_t bytes_read;
    size_t bytes_encoded;
    char foo[64];

    if (masscan->echo) {
        //Echoed as a string "hello-string" that was originally read
        //from a file, not the "hello-filename"
        return 0;
    }
    
    index = FUNC0(name);
    if (index >= 65536) {
        FUNC5(stderr, "%s: bad index\n", name);
        return CONF_ERR;
    }

    /* When connecting via TCP, send this file */
    x = FUNC4(&fp, value, "rb");
    if (x != 0) {
        FUNC1(0, "[FAILED] could not read hello file\n");
        FUNC8(value);
        return CONF_ERR;
    }
    
    bytes_read = FUNC6(buf, 1, sizeof(buf), fp);
    if (bytes_read == 0) {
        FUNC1(0, "[FAILED] could not read hello file\n");
        FUNC8(value);
        FUNC3(fp);
        return CONF_ERR;
    }
    FUNC3(fp);
    
    bytes_encoded = FUNC2(buf2, sizeof(buf2)-1, buf, bytes_read);
    buf2[bytes_encoded] = '\0';
    
    FUNC9(foo, sizeof(foo), "hello-string[%u]", (unsigned)index);
    
    FUNC7(masscan, foo, buf2);

    return CONF_OK;
}