
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ strcmp (char const*,char const*) ;

__attribute__((used)) static int cmpstr (const void *_a, const void *_b) {
 const char *a = _a, *b = _b;
 return (int)strcmp (a, b);
}
