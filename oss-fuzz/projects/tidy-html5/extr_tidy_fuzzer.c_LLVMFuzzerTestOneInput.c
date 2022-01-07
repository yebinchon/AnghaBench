
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int byte ;
typedef int TidyBuffer ;


 int run_tidy_parser (int *,int *,int *) ;
 int tidyBufAttach (int *,int *,size_t) ;
 int tidyBufDetach (int *) ;
 int tidyBufFree (int *) ;
 int tidyBufInit (int *) ;

int LLVMFuzzerTestOneInput(const uint8_t *data, size_t size) {
    TidyBuffer data_buffer;
    TidyBuffer output_buffer;
    TidyBuffer error_buffer;
    tidyBufInit(&data_buffer);
    tidyBufInit(&output_buffer);
    tidyBufInit(&error_buffer);

    tidyBufAttach(&data_buffer, (byte*)data, size);
    run_tidy_parser(&data_buffer, &output_buffer, &error_buffer);

    tidyBufFree(&error_buffer);
    tidyBufFree(&output_buffer);
    tidyBufDetach(&data_buffer);
    return 0;
}
