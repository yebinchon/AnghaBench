
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int TidyDoc ;


 char* fuzzer_get_tmpfile (int const*,size_t) ;
 int fuzzer_release_tmpfile (char*) ;
 int tidyCreate () ;
 int tidyLoadConfig (int ,char*) ;
 int tidyRelease (int ) ;

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size) {
    TidyDoc tdoc = tidyCreate();



    char* tmpfile = fuzzer_get_tmpfile(data, size);
    tidyLoadConfig(tdoc, tmpfile);
    fuzzer_release_tmpfile(tmpfile);
    tidyRelease(tdoc);
    return 0;
}
