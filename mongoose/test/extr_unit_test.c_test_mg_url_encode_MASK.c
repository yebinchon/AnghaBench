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
struct mg_str {scalar_t__ p; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct mg_str,char*) ; 
 struct mg_str FUNC1 (char*) ; 
 int MG_URL_ENCODE_F_SPACE_AS_PLUS ; 
 int MG_URL_ENCODE_F_UPPERCASE_HEX ; 
 int /*<<< orphan*/  FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 struct mg_str FUNC4 (struct mg_str const) ; 
 struct mg_str FUNC5 (struct mg_str const,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static const char *FUNC6(void) {
  const struct mg_str encode_me =
      FUNC1("I'm a.little_tea-pot,here's$my;spout~oink(oink)oink/!");
  {
    struct mg_str encoded = FUNC4(encode_me);
    FUNC0(
        encoded,
        "I%27m%20a.little_tea-pot,here%27s$my;spout~oink(oink)oink/%21");
    FUNC2((void *) encoded.p);
  }
  {
    struct mg_str encoded = FUNC5(encode_me, FUNC3(NULL), 0);
    FUNC0(encoded,
                    "I%27m%20a%2elittle%5ftea%2dpot%2chere%27s%24my%3bspout%"
                    "7eoink%28oink%29oink%2f%21");
    FUNC2((void *) encoded.p);
  }
  {
    struct mg_str encoded = FUNC5(encode_me, FUNC3(" /!"),
                                              MG_URL_ENCODE_F_UPPERCASE_HEX);
    FUNC0(encoded,
                    "I%27m "
                    "a%2Elittle%5Ftea%2Dpot%2Chere%27s%24my%3Bspout%7Eoink%"
                    "28oink%29oink/!");
    FUNC2((void *) encoded.p);
  }
  {
    struct mg_str encoded = FUNC5(
        encode_me, FUNC3("/!"),
        MG_URL_ENCODE_F_SPACE_AS_PLUS | MG_URL_ENCODE_F_UPPERCASE_HEX);
    FUNC0(encoded,
                    "I%27m+a%2Elittle%5Ftea%2Dpot%2Chere%27s%24my%3Bspout%"
                    "7Eoink%28oink%29oink/!");
    FUNC2((void *) encoded.p);
  }
  return NULL;
}