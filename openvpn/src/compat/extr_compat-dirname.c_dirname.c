
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ __memrchr (char*,char,int) ;
 char* strrchr (char*,char) ;

char *
dirname(char *path)
{
    static const char dot[] = ".";
    char *last_slash;
    char separator = '/';


    last_slash = path != ((void*)0) ? strrchr(path, '/') : ((void*)0);

    if (!last_slash)
    {
        last_slash = path != ((void*)0) ? strrchr(path, '\\') : ((void*)0);
        separator = last_slash ? '\\' : '/';
    }

    if (last_slash != ((void*)0) && last_slash != path && last_slash[1] == '\0')
    {

        char *runp;

        for (runp = last_slash; runp != path; --runp)
        {
            if (runp[-1] != separator)
            {
                break;
            }
        }


        if (runp != path)
        {
            last_slash = (char *) __memrchr(path, separator, runp - path);
        }
    }

    if (last_slash != ((void*)0))
    {

        char *runp;

        for (runp = last_slash; runp != path; --runp)
        {
            if (runp[-1] != separator)
            {
                break;
            }
        }


        if (runp == path)
        {




            if (last_slash == path + 1)
            {
                ++last_slash;
            }
            else
            {
                last_slash = path + 1;
            }
        }
        else
        {
            last_slash = runp;
        }

        last_slash[0] = '\0';
    }
    else
    {



        path = (char *) dot;
    }

    return path;
}
