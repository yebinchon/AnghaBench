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
struct web_client {char separator; int /*<<< orphan*/  url_path_length; } ;

/* Variables and functions */
 char* FUNC0 (char*,char) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct web_client*,char*,char*) ; 

void FUNC4(struct web_client *w, char *s) {
    //I am assuming here that the separator character(?) is not encoded
    char *ptr = FUNC0(s, '?');
    if(ptr) {
        w->separator = '?';
        FUNC3(w, s, ptr);
        return;
    }

    //Here I test the second possibility, the URL is completely encoded by the user.
    //I am not using the strcasestr, because it is fastest to check %3f and compare
    //the next character.
    //We executed some tests with "encodeURI(uri);" described in https://www.w3schools.com/jsref/jsref_encodeuri.asp
    //on July 1st, 2019, that show us that URLs won't have '?','=' and '&' encoded, but we decided to move in front
    //with the next part, because users can develop their own encoded that won't follow this rule.
    char *moveme = s;
    while (moveme) {
        ptr = FUNC0(moveme, '%');
        if(ptr) {
            char *test = (ptr+1);
            if (!FUNC2(test, "3f", 2) || !FUNC2(test, "3F", 2)) {
                w->separator = *ptr;
                FUNC3(w, s, ptr);
                return;
            }
            ptr++;
        }

        moveme = ptr;
    }

    w->separator = 0x00;
    w->url_path_length = FUNC1(s);
}