
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int *,char*) ;
 int * stdout ;
 int xmlHashScanFull (int ,int ,int *) ;
 int xmlMutexLock (int ) ;
 int xmlMutexUnlock (int ) ;
 int xsltDebugDumpExtModulesCallback ;
 int xsltDebugDumpExtensionsCallback ;
 int xsltElementsHash ;
 int xsltExtMutex ;
 int xsltExtensionsHash ;
 int xsltFunctionsHash ;

void
xsltDebugDumpExtensions(FILE * output)
{
    if (output == ((void*)0))
        output = stdout;
    fprintf(output,
            "Registered XSLT Extensions\n--------------------------\n");
    if (!xsltFunctionsHash)
        fprintf(output, "No registered extension functions\n");
    else {
        fprintf(output, "Registered Extension Functions:\n");
        xmlMutexLock(xsltExtMutex);
        xmlHashScanFull(xsltFunctionsHash, xsltDebugDumpExtensionsCallback,
                        output);
        xmlMutexUnlock(xsltExtMutex);
    }
    if (!xsltElementsHash)
        fprintf(output, "\nNo registered extension elements\n");
    else {
        fprintf(output, "\nRegistered Extension Elements:\n");
        xmlMutexLock(xsltExtMutex);
        xmlHashScanFull(xsltElementsHash, xsltDebugDumpExtensionsCallback,
                        output);
        xmlMutexUnlock(xsltExtMutex);
    }
    if (!xsltExtensionsHash)
        fprintf(output, "\nNo registered extension modules\n");
    else {
        fprintf(output, "\nRegistered Extension Modules:\n");
        xmlMutexLock(xsltExtMutex);
        xmlHashScanFull(xsltExtensionsHash, xsltDebugDumpExtModulesCallback,
                        output);
        xmlMutexUnlock(xsltExtMutex);
    }

}
