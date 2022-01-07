
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int TidyDoc ;
typedef int TidyBuffer ;


 int TidyForceOutput ;
 int TidyXhtmlOut ;
 int abort () ;
 scalar_t__ tidyCleanAndRepair (int ) ;
 int tidyCreate () ;
 int tidyOptSetBool (int ,int ,int ) ;
 scalar_t__ tidyParseBuffer (int ,int *) ;
 int tidyRelease (int ) ;
 scalar_t__ tidyRunDiagnostics (int ) ;
 int tidySaveBuffer (int ,int *) ;
 scalar_t__ tidySetErrorBuffer (int ,int *) ;
 int yes ;

void run_tidy_parser(TidyBuffer* data_buffer,
                     TidyBuffer* output_buffer,
                     TidyBuffer* error_buffer) {
    TidyDoc tdoc = tidyCreate();
    if (tidySetErrorBuffer(tdoc, error_buffer) < 0) {
        abort();
    }
    tidyOptSetBool(tdoc, TidyXhtmlOut, yes);
    tidyOptSetBool(tdoc, TidyForceOutput, yes);

    if (tidyParseBuffer(tdoc, data_buffer) >= 0 &&
            tidyCleanAndRepair(tdoc) >= 0 &&
            tidyRunDiagnostics(tdoc) >= 0) {
        tidySaveBuffer(tdoc, output_buffer);
    }
    tidyRelease(tdoc);
}
