
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum protocol { ____Placeholder_protocol } protocol ;






__attribute__((used)) static const char *prot_text(enum protocol prot) {
    char *rv = "unknown";
    switch(prot) {
        case 130:
            rv = "ascii";
            break;
        case 129:
            rv = "binary";
            break;
        case 128:
            rv = "auto-negotiate";
            break;
    }
    return rv;
}
