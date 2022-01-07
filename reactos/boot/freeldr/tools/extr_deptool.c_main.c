
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int ERROR_DEPENDFILENOTFOUND ;
 int ERROR_NOTENOUGHPARAMS ;
 int ERROR_OUTOFMEMORY ;
 int ERROR_READERROR ;
 int ERROR_SUCCESS ;
 int ERROR_WRITEERROR ;
 int SEEK_END ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char*,char*) ;
 int fread (char*,int,int,int *) ;
 int free (char*) ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;
 int fwrite (char*,int,int,int *) ;
 scalar_t__ malloc (int) ;
 int memset (char*,int ,int) ;
 int printf (char*,...) ;
 int rewind (int *) ;
 int strcat (char*,char*) ;
 int strlen (char*) ;

int main(int argc, char *argv[])
{
    FILE* DependFile;
    int DependFileSize;
    char* DependFileData;
    char* NewDependFileData;
    int CurIdx;
    int CurIdx2;
    int RuleDependencySplit = 0;


    if (argc < 2)
    {
        printf("Usage: deptool srcfile.d\n");
        return ERROR_NOTENOUGHPARAMS;
    }


    DependFile = fopen(argv[1], "r+t");
    if (DependFile == ((void*)0))
    {
        printf("deptool: No such dependency file: %s\n", argv[1]);
        return ERROR_DEPENDFILENOTFOUND;
    }


    fseek(DependFile, 0, SEEK_END);
    DependFileSize = ftell(DependFile);
    rewind(DependFile);


    DependFileData = (char *)malloc(DependFileSize);
    NewDependFileData = (char *)malloc(DependFileSize * 3);
    if (!DependFileData || !NewDependFileData)
    {
        printf("deptool: Out of memory!\n");
        if (DependFileData != ((void*)0))
            free(DependFileData);
        if (NewDependFileData != ((void*)0))
            free(NewDependFileData);
        fclose(DependFile);
        return ERROR_OUTOFMEMORY;
    }
    memset(DependFileData, 0, DependFileSize);
    memset(NewDependFileData, 0, DependFileSize * 3);


    fread(DependFileData, 1, DependFileSize, DependFile);
    if (ferror(DependFile))
    {
        printf("deptool: Dependency file read error.\n");
        free(DependFileData);
        free(NewDependFileData);
        fclose(DependFile);
        return ERROR_READERROR;
    }



    for (CurIdx=0,CurIdx2=0; DependFileData[CurIdx]; CurIdx++,CurIdx2++)
    {


        if (DependFileData[CurIdx] == ':')
        {
            NewDependFileData[CurIdx2] = ' ';
            CurIdx2++;
            strcat(&NewDependFileData[CurIdx2], argv[1]);
            CurIdx2 += strlen(argv[1]);
            NewDependFileData[CurIdx2] = ' ';
            CurIdx2++;
            strcat(NewDependFileData, &DependFileData[CurIdx]);
            CurIdx2 += 2;
            RuleDependencySplit = CurIdx + 2;
            break;
        }
        else
        {
            NewDependFileData[CurIdx2] = DependFileData[CurIdx];
        }
    }



    strcat(NewDependFileData, "\n\n");
    CurIdx = RuleDependencySplit;
    CurIdx2 = strlen(NewDependFileData);
    for (; DependFileData[CurIdx]; CurIdx++,CurIdx2++)
    {

        if (DependFileData[CurIdx] == '\\')
        {
            CurIdx2--;
            continue;
        }


        if (DependFileData[CurIdx] == '\n')
        {
            NewDependFileData[CurIdx2] = ':';
            CurIdx2++;
        }

        NewDependFileData[CurIdx2] = DependFileData[CurIdx];
    }


    rewind(DependFile);
    fwrite(NewDependFileData, 1, strlen(NewDependFileData), DependFile);
    if (ferror(DependFile))
    {
        printf("deptool: Dependency file write error.\n");
        fclose(DependFile);
        free(DependFileData);
        free(NewDependFileData);
        return ERROR_WRITEERROR;
    }

    fclose(DependFile);
    free(DependFileData);
    free(NewDependFileData);
    return ERROR_SUCCESS;
}
