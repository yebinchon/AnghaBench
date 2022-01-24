#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  json_t ;
struct TYPE_3__ {int line; char* text; } ;
typedef  TYPE_1__ json_error_t ;

/* Variables and functions */
 char* URL_FORMAT ; 
 int URL_SIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,size_t) ; 
 size_t FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (char*,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/ * FUNC9 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC10 (int /*<<< orphan*/ *) ; 
 char* FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (char*,char*,char*,char const*) ; 
 char* FUNC13 (char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*,char*,char*) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC15(int argc, char *argv[])
{
    size_t i;
    char *text;
    char url[URL_SIZE];

    json_t *root;
    json_error_t error;

    if(argc != 3)
    {
        FUNC0(stderr, "usage: %s USER REPOSITORY\n\n", argv[0]);
        FUNC0(stderr, "List commits at USER's REPOSITORY.\n\n");
        return 2;
    }

    FUNC14(url, URL_SIZE, URL_FORMAT, argv[1], argv[2]);

    text = FUNC13(url);
    if(!text)
        return 1;

    root = FUNC8(text, 0, &error);
    FUNC1(text);

    if(!root)
    {
        FUNC0(stderr, "error: on line %d: %s\n", error.line, error.text);
        return 1;
    }

    if(!FUNC5(root))
    {
        FUNC0(stderr, "error: root is not an array\n");
        FUNC4(root);
        return 1;
    }

    for(i = 0; i < FUNC3(root); i++)
    {
        json_t *data, *sha, *commit, *message;
        const char *message_text;

        data = FUNC2(root, i);
        if(!FUNC6(data))
        {
            FUNC0(stderr, "error: commit data %d is not an object\n", (int)(i + 1));
            FUNC4(root);
            return 1;
        }

        sha = FUNC9(data, "sha");
        if(!FUNC7(sha))
        {
            FUNC0(stderr, "error: commit %d: sha is not a string\n", (int)(i + 1));
            return 1;
        }

        commit = FUNC9(data, "commit");
        if(!FUNC6(commit))
        {
            FUNC0(stderr, "error: commit %d: commit is not an object\n", (int)(i + 1));
            FUNC4(root);
            return 1;
        }

        message = FUNC9(commit, "message");
        if(!FUNC7(message))
        {
            FUNC0(stderr, "error: commit %d: message is not a string\n", (int)(i + 1));
            FUNC4(root);
            return 1;
        }

        message_text = FUNC10(message);
        FUNC12("%.8s %.*s\n",
               FUNC10(sha),
               FUNC11(message_text),
               message_text);
    }

    FUNC4(root);
    return 0;
}