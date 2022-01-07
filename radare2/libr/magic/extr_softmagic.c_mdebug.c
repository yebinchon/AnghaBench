
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ut32 ;


 int eprintf (char*,int ) ;
 int file_showstr (int ,char const*,size_t) ;
 int fputc (char,int ) ;
 int stderr ;

__attribute__((used)) static void mdebug(ut32 offset, const char *str, size_t len) {
 eprintf ("mget @%d: ", offset);
 file_showstr (stderr, str, len);
 (void) fputc('\n', stderr);
 (void) fputc('\n', stderr);
}
