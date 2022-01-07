
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,char*) ;

__attribute__((used)) static void usage(char* argv[]) {
 printf("Usage: %s [OPTIONS...]\n"
        "\n"
        "Options:\n"
        "  -f            add sercom footer (if absent, header)\n"
        "  -b <hwid>     use hardware id specified with <hwid> (ASCII)\n"
        "  -r <hwrev>    use hardware revision specified with <hwrev> (ASCII)\n"
        "  -v <version>  set image version to <version> (decimal, hex or octal notation)\n"
        "  -i <file>     input file\n"
        , argv[0]);
}
