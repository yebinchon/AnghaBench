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
typedef  enum install_res { ____Placeholder_install_res } install_res ;
typedef  int /*<<< orphan*/  WCHAR ;
typedef  int UINT ;
typedef  char* LPWSTR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_ACP ; 
 int INSTALL_FAILED ; 
 int INSTALL_NEXT ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int) ; 
 int /*<<< orphan*/  O_RDONLY ; 
 int /*<<< orphan*/  FUNC1 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 char* FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC10 (char*,char const*) ; 
 int FUNC11 (char const*) ; 

__attribute__((used)) static enum install_res FUNC12(const char *dir, const char *subdir, const char *file_name)
{
    LPWSTR dos_file_name;
    char *file_path;
    int fd, len;
    enum install_res ret;
    UINT res;

    len = FUNC11(dir);
    file_path = FUNC6(len+FUNC11(subdir)+FUNC11(file_name)+3);
    if(!file_path)
        return INSTALL_FAILED;

    FUNC9(file_path, dir, len);
    if(len && file_path[len-1] != '/' && file_path[len-1] != '\\')
        file_path[len++] = '/';
    if(*subdir) {
        FUNC10(file_path+len, subdir);
        len += FUNC11(subdir);
        file_path[len++] = '/';
    }
    FUNC10(file_path+len, file_name);

    fd = FUNC4(file_path, O_RDONLY);
    if(fd == -1) {
        FUNC1("%s not found\n", FUNC5(file_path));
        FUNC7(file_path);
        return INSTALL_NEXT;
    }

    FUNC3(fd);

    FUNC2("Could not get wine_get_dos_file_name function, calling install_cab directly.\n");
    res = FUNC0( CP_ACP, 0, file_path, -1, 0, 0);
    dos_file_name = FUNC6 (res*sizeof(WCHAR));
    FUNC0( CP_ACP, 0, file_path, -1, dos_file_name, res);

    FUNC7(file_path);

    ret = FUNC8(dos_file_name);

    FUNC7(dos_file_name);
    return ret;
}